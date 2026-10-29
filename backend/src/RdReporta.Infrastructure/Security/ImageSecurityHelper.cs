using ImageMagick;

namespace RdReporta.Infrastructure.Security;

public static class ImageSecurityHelper
{
    // Limit decoded memory as well as the compressed request size.
    private const long MaxPixels = 24_000_000;

    public static async Task<MemoryStream> RemoveMetadataAsync(
        Stream input, string extension, CancellationToken cancellationToken = default)
    {
        var format = extension.ToLowerInvariant() switch
        {
            ".jpg" or ".jpeg" => MagickFormat.Jpeg,
            ".png" => MagickFormat.Png,
            ".webp" => MagickFormat.WebP,
            _ => throw new InvalidDataException("Formato de imagen no permitido.")
        };

        try
        {
            var start = input.Position;
            var settings = new MagickReadSettings { Format = format, FrameCount = 1 };
            using var image = new MagickImage();
            await image.PingAsync(input, settings, cancellationToken);
            if (image.Width == 0 || image.Height == 0 || (long)image.Width * image.Height > MaxPixels)
                throw new InvalidDataException("La imagen supera el límite de 24 megapíxeles.");
            input.Position = start;
            await image.ReadAsync(input, settings, cancellationToken);
            // Apply orientation to pixels before removing the camera's EXIF profile.
            image.AutoOrient();
            image.Strip();
            image.Quality = 90;
            var output = new MemoryStream();
            try
            {
                await image.WriteAsync(output, format, cancellationToken);
                output.Position = 0;
                return output;
            }
            catch
            {
                output.Dispose();
                throw;
            }
        }
        catch (MagickException exception)
        {
            throw new InvalidDataException("La imagen está dañada o no se puede decodificar.", exception);
        }
    }
}
