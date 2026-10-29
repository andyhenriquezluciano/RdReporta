using ImageMagick;
using RdReporta.Infrastructure.Security;
using RdReporta.Application.Common;

foreach (var (extension, format) in new (string, MagickFormat)[]
{
    (".jpg", MagickFormat.Jpeg), (".png", MagickFormat.Png), (".webp", MagickFormat.WebP)
})
{
    using var image = new MagickImage(MagickColors.Black, 10, 20);
    var exif = new ExifProfile();
    exif.SetValue(ExifTag.Orientation, (ushort)6);
    exif.SetValue(ExifTag.GPSLatitudeRef, "N");
    exif.SetValue(ExifTag.Artist, "Private author");
    image.SetProfile(exif);
    image.Orientation = Orientation.RightTop;
    if (extension == ".png")
        image.SetAttribute("Author", "Private author");
    using var input = new MemoryStream();
    await image.WriteAsync(input, format);
    input.Position = 0;
    using var sanitized = await ImageSecurityHelper.RemoveMetadataAsync(input, extension);
    using var decoded = new MagickImage(sanitized);
    if (decoded.Width != 20 || decoded.Height != 10)
        throw new Exception($"{extension}: image orientation changed.");
    if (decoded.GetExifProfile() != null || decoded.GetXmpProfile() != null
        || decoded.GetIptcProfile() != null)
        throw new Exception($"{extension}: private metadata survived.");
    if (extension == ".png" && decoded.GetAttribute("Author") != null)
        throw new Exception("PNG private text survived.");
}

try
{
    using var damaged = new MemoryStream(new byte[] { 0xFF, 0xD8, 0xFF, 0xDA, 0, 2 });
    using var unexpected = await ImageSecurityHelper.RemoveMetadataAsync(damaged, ".jpg");
    throw new Exception("Damaged image was accepted.");
}
catch (InvalidDataException) { }

var owner = Guid.NewGuid();
var allowed = new HashSet<string>(StringComparer.OrdinalIgnoreCase) { ".jpg" };
var name = $"{owner:N}_{Guid.NewGuid():N}.jpg";
if (!UploadReference.IsOwned($"/uploads/{name}", owner, allowed)
    || UploadReference.IsOwned($"/uploads/{name}", Guid.NewGuid(), allowed)
    || UploadReference.IsOwned($"/uploads/../{name}", owner, allowed)
    || UploadReference.IsOwned($"/uploads/{name}?x=1", owner, allowed))
    throw new Exception("Upload owner or path checks failed.");

Console.WriteLine("PASS: real JPEG/PNG/WebP decode, orientation, metadata, damaged files and upload ownership.");
