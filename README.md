<div align="center">
  <img src="mobile/assets/branding/rdreporta_logo_dark.png" alt="Logo de RDReporta" width="110" />

# RDReporta

**Tu comunidad al día.**

Plataforma ciudadana para publicar, consultar y localizar incidencias comunitarias en la República Dominicana.

<p>
  <img src="https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&amp;logo=flutter&amp;logoColor=white" alt="Flutter" />
  <img src="https://img.shields.io/badge/.NET_10-512BD4?style=for-the-badge&amp;logo=dotnet&amp;logoColor=white" alt=".NET 10" />
  <img src="https://img.shields.io/badge/React_19-20232A?style=for-the-badge&amp;logo=react&amp;logoColor=61DAFB" alt="React 19" />
  <img src="https://img.shields.io/badge/TypeScript-3178C6?style=for-the-badge&amp;logo=typescript&amp;logoColor=white" alt="TypeScript" />
  <img src="https://img.shields.io/badge/PostgreSQL_16-4169E1?style=for-the-badge&amp;logo=postgresql&amp;logoColor=white" alt="PostgreSQL 16" />
  <img src="https://img.shields.io/badge/PostGIS-Spatial-287C46?style=for-the-badge" alt="PostGIS" />
  <img src="https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&amp;logo=docker&amp;logoColor=white" alt="Docker" />
</p>
</div>

RDReporta reúne una aplicación móvil en Flutter, una API en ASP.NET Core y un panel web de administración. Los ciudadanos pueden compartir lo que ocurre en su comunidad, adjuntar evidencias, ubicar reportes y reaccionar a las publicaciones. El equipo de moderación puede revisar denuncias y gestionar el contenido desde el panel web.

## Recorrido en video

Grabación real de la aplicación: **46 segundos** con navegación por el inicio, reacciones, galería, mapa, tendencias y formulario de publicación.

<p align="center">
  <a href="https://github.com/andyhenriquezluciano/RdReporta/raw/refs/heads/main/docs/media/recorrido-rdreporta.mp4">
    <img src="docs/media/inicio.jpg" alt="Abrir el video de demostración de RDReporta" width="240" />
  </a>
  <br />
  <strong>Haz clic en la captura para abrir el video.</strong>
</p>

[Ver o descargar el recorrido completo en MP4](https://github.com/andyhenriquezluciano/RdReporta/raw/refs/heads/main/docs/media/recorrido-rdreporta.mp4).

| Tramo | Qué muestra |
| --- | --- |
| 00:00–00:06 | Inicio y selector de reacciones. |
| 00:06–00:14 | Detalle de una incidencia y recorrido por su galería. |
| 00:14–00:22 | Radar, marcador y acceso al detalle desde el mapa. |
| 00:22–00:24 | Sección Popular y su estado sin tendencias. |
| 00:24–00:42 | Formulario, evidencias, GPS, dirección y selección de ubicación en el mapa. |
| 00:42–00:46 | Regreso a Popular e Inicio. |

Las capturas del recorrido se extrajeron del video suministrado. El formulario se muestra durante la preparación de un reporte; la grabación no incluye el envío de una publicación nueva. El acceso por correo se ilustra con una captura real adicional de la aplicación.

## Funciones de la aplicación móvil

### Inicio y consulta de incidencias

- **Para ti:** muestra publicaciones destacadas y, cuando no hay resultados, utiliza las publicaciones recientes.
- **Cerca de mí:** consulta incidencias cercanas a la ubicación del dispositivo, con permiso de localización.
- **Recientes:** permite consultar las publicaciones más nuevas.
- **Filtros por categoría:** accidentes, tránsito, calles y vías, y las demás categorías activas configuradas en el sistema.
- **Actualización y paginación:** permite refrescar el contenido y cargar más publicaciones.
- **Tarjetas informativas:** muestran autor, verificación del perfil, categoría, fecha, evidencias, ubicación, reacciones y visualizaciones.

### Detalle, evidencias y reacciones

- Consulta del título, descripción, autor, fecha y categoría de cada incidencia.
- Galería de imágenes y reproducción de video dentro de las publicaciones.
- Ubicación con provincia, municipio, referencia y coordenadas cuando están disponibles.
- Selector de reacciones con emojis y actualización de los contadores.
- Registro de visualizaciones por usuario y actualización de contadores en tiempo real.
- Acceso al perfil público del autor y opción para denunciar contenido.

<table>
  <tr>
    <th>Inicio</th>
    <th>Reacciones</th>
    <th>Detalle de la incidencia</th>
  </tr>
  <tr>
    <td><img src="docs/media/inicio.jpg" alt="Inicio con filtros por categoría y publicaciones" width="250" /></td>
    <td><img src="docs/media/reacciones.jpg" alt="Selector de reacciones con emojis" width="250" /></td>
    <td><img src="docs/media/detalle.jpg" alt="Detalle con evidencias, autor y ubicación" width="250" /></td>
  </tr>
</table>

### Radar de incidencias y mapas

- Mapa centrado en la República Dominicana con marcadores de incidencias geolocalizadas.
- Filtros por categoría y consulta de las incidencias geolocalizadas del país.
- Alternancia entre la vista de mapa y la lista de incidencias.
- Tarjeta del marcador con evidencias, título, ubicación y acceso al detalle.
- Selector de ubicación para colocar un reporte moviendo el mapa y confirmando el punto elegido.

<table>
  <tr>
    <th>Radar de incidencias</th>
    <th>Detalle del marcador</th>
    <th>Selección de ubicación</th>
  </tr>
  <tr>
    <td><img src="docs/media/mapa.jpg" alt="Radar de incidencias en el mapa de República Dominicana" width="250" /></td>
    <td><img src="docs/media/mapa-detalle.jpg" alt="Tarjeta de una incidencia seleccionada en el mapa" width="250" /></td>
    <td><img src="docs/media/elegir-ubicacion.jpg" alt="Selección manual de un punto en el mapa" width="250" /></td>
  </tr>
</table>

### Publicación de reportes

- Selección de categoría, título y descripción de la incidencia.
- Hasta **cuatro fotografías y un video** por reporte, desde cámara o galería.
- Videos de hasta **tres minutos y 150 MB**; imágenes de hasta **10 MB** por archivo.
- Provincia, municipio, barrio o sector y calle o punto de referencia.
- Ubicación mediante **GPS**, selección en el **mapa** o introducción de **latitud y longitud**.
- Autocompletado de la dirección a partir de las coordenadas disponibles y opción para corregir los datos antes de publicar.
- Publicación con o sin coordenadas. Las incidencias sin coordenadas no se representan como puntos en el mapa.
- Conservación del formulario y de los archivos ya subidos durante un reintento, si una carga falla.

<table>
  <tr>
    <th>Datos y evidencias</th>
    <th>Ubicación por GPS</th>
    <th>Revisión de la ubicación</th>
  </tr>
  <tr>
    <td><img src="docs/media/crear-reporte.jpg" alt="Formulario con categoría, título, descripción y evidencias" width="250" /></td>
    <td><img src="docs/media/ubicacion-gps.jpg" alt="Dirección y coordenadas obtenidas para un reporte" width="250" /></td>
    <td><img src="docs/media/publicar-reporte.jpg" alt="Referencia, coordenadas y botón para publicar la incidencia" width="250" /></td>
  </tr>
</table>

### Tendencias de la comunidad

La sección **Popular esta semana** reúne las publicaciones activas de los últimos siete días, ordenadas según sus reacciones y visualizaciones. Incluye actualización manual, paginación y un mensaje informativo cuando todavía no hay resultados. La captura muestra ese estado vacío real.

<p align="center">
  <img src="docs/media/popular.jpg" alt="Sección Popular esta semana sin tendencias disponibles" width="250" />
</p>

### Acceso y gestión de la cuenta

- Registro con nombre de usuario, correo electrónico, contraseña y provincia.
- Inicio de sesión por correo y contraseña.
- Integración con Google y con Apple en las plataformas compatibles, una vez configurados sus servicios.
- Recuperación de contraseña mediante código enviado por correo y cambio de contraseña desde el flujo de recuperación.
- Consulta de contenido público sin iniciar sesión; las acciones de publicación e interacción requieren una cuenta.
- Restauración de sesión, renovación de tokens y cierre de sesión.

<p align="center">
  <img src="docs/media/iniciar-sesion.png" alt="Formulario real de inicio de sesión por correo y contraseña" width="250" />
</p>

### Perfiles, publicaciones propias y preferencias

| Función | Qué permite hacer |
| --- | --- |
| Perfil personal | Consultar nombre, usuario, provincia, fecha de registro, insignia de verificación y número de reportes y seguidores. |
| Edición del perfil | Cambiar el nombre visible, el nombre de usuario y la provincia, con las validaciones de la aplicación. |
| Foto de perfil | Seleccionar una imagen de la galería, recortarla y actualizar el avatar. |
| Perfiles públicos | Consultar la información y publicaciones de otros ciudadanos. |
| Seguimiento | Seguir o dejar de seguir perfiles y consultar sus contadores de seguidores y seguidos. |
| Mis reportes | Consultar las publicaciones propias y eliminar un reporte con confirmación. |
| Apariencia | Elegir tema oscuro Rosé Pine, claro Dawn o automático según el sistema. |
| Privacidad | Consultar la información de privacidad y convivencia de la comunidad. |
| Eliminación de cuenta | Solicitar el borrado desde el perfil, con doble confirmación y escritura de la palabra ELIMINAR. |

### Notificaciones y convivencia

- Bandeja de notificaciones con fecha, estado de lectura y carga de mensajes anteriores.
- Contador de notificaciones sin leer y apertura de la incidencia relacionada.
- Integración con Firebase Cloud Messaging para recibir avisos push cuando el servicio está configurado y el usuario concede permiso.
- Denuncia de publicaciones por información falsa, spam, acoso, datos personales, contenido violento, ubicación incorrecta, duplicados u otros motivos.
- Revisión de las denuncias desde el panel de moderación.

Las funciones de perfiles, preferencias, notificaciones y moderación están implementadas en el código; no aparecen en el video de este README.

## Panel web de administración

El panel React ofrece acceso según los roles **Moderador** y **Administrador**.

| Módulo | Funciones |
| --- | --- |
| Dashboard | Totales de publicaciones, incidencias activas y resueltas, visualizaciones, reacciones y denuncias pendientes. |
| Publicaciones | Búsqueda, filtros por estado y categoría, paginación, consulta del detalle y cambio de estado. |
| Moderación | Consulta de denuncias y de la publicación asociada; descarte o resolución ocultando contenido, con notas de revisión. |
| Usuarios | Búsqueda de usuarios y activación o retirada de la insignia de verificación. Disponible para administradores. |
| Categorías | Consulta, creación y edición de categorías: nombre, descripción, icono, color y orden. La escritura requiere rol de administrador. |
| Apariencia | Selección del tema visual del panel. |

Los estados de las publicaciones son **activa**, **resuelta**, **oculta** y **archivada**. Las capturas y el video de esta página corresponden a la aplicación móvil; no se incluyen imágenes de muestra del panel web.

## Tecnologías y organización

| Componente | Tecnologías |
| --- | --- |
| Aplicación móvil | Flutter, Dart, Dio, almacenamiento seguro, Google Maps, geolocalización, cámara, galería y reproducción de video. |
| API | ASP.NET Core / .NET 10, Entity Framework Core, autenticación JWT, BCrypt, OpenAPI y Scalar. |
| Datos geográficos | PostgreSQL 16, PostGIS, Npgsql y NetTopologySuite. |
| Panel administrativo | React 19, TypeScript, Vite y Lucide. |
| Servicios e infraestructura | Docker Compose, Firebase Cloud Messaging, SMTP y almacenamiento local o compatible con S3. |
| Procesamiento de imágenes | Magick.NET para decodificación, orientación y eliminación de metadatos. |

```text
RdReporta/
├── mobile/                  Aplicación Flutter y recursos visuales
├── admin/                   Panel web React
├── backend/
│   ├── src/
│   │   ├── RdReporta.Api/             Endpoints, configuración y servicios HTTP
│   │   ├── RdReporta.Application/     Casos de uso, DTO e interfaces
│   │   ├── RdReporta.Domain/          Entidades y enumeraciones
│   │   └── RdReporta.Infrastructure/  Persistencia, seguridad y almacenamiento
│   └── tests/              Comprobaciones existentes del backend
├── database/               Inicialización de PostGIS y catálogos SQL
├── docker/                 Docker Compose y plantilla de entorno
├── docs/media/             Capturas y video utilizados en este README
└── scripts/                Herramientas de comprobación del proyecto
```

## Ejecución local

### Requisitos

- .NET 10 SDK.
- Node.js 22.12 o posterior y npm para el panel web.
- Flutter SDK compatible con las dependencias de `mobile/pubspec.yaml` y Android SDK para Android.
- Docker con Docker Compose para PostgreSQL y PostGIS.
- macOS con Xcode para compilar y ejecutar la aplicación en iOS.

Los siguientes ejemplos utilizan **PowerShell** y se ejecutan desde la raíz del repositorio, salvo cuando se indica un cambio de carpeta.

### 1. Clonar y preparar la base de datos

```powershell
git clone https://github.com/andyhenriquezluciano/RdReporta.git
cd RdReporta
Copy-Item docker/.env.example docker/.env
```

Edita `docker/.env` y sustituye los valores de ejemplo de `POSTGRES_PASSWORD` y `JWT_SECRET_KEY` por valores aleatorios propios. Después inicia únicamente la base de datos:

```powershell
docker compose --env-file docker/.env -f docker/docker-compose.yml up -d db
```

### 2. Configurar y ejecutar la API

Guarda la conexión y la clave JWT en los secretos de desarrollo de .NET. La contraseña debe coincidir con la definida para PostgreSQL; la clave JWT debe contener al menos 32 bytes aleatorios.

```powershell
dotnet user-secrets set "ConnectionStrings:DefaultConnection" "Host=localhost;Port=5432;Database=rdreporta_db;Username=postgres;Password=<tu-password-local>" --project backend/src/RdReporta.Api
dotnet user-secrets set "Jwt:SecretKey" "<tu-secreto-aleatorio-de-al-menos-32-bytes>" --project backend/src/RdReporta.Api
dotnet restore backend/RdReporta.slnx
dotnet run --project backend/src/RdReporta.Api --launch-profile http
```

La API estará en `http://localhost:5000`. En desarrollo, Scalar está disponible en `http://localhost:5000/scalar/v1`. El arranque inicializa el esquema y los catálogos cuando puede conectarse a la base de datos.

Para crear el administrador inicial, configura `SeedAdmin:Email` y `SeedAdmin:Password` mediante `dotnet user-secrets` antes de arrancar la API. No existe una contraseña administrativa predeterminada en el repositorio.

### 3. Ejecutar el panel web

En otra terminal:

```powershell
cd admin
Copy-Item .env.example .env
npm ci
npm run dev
```

`VITE_API_BASE_URL` debe apuntar a la API, por ejemplo `http://localhost:5000/api`. Vite muestra en la terminal la dirección local del panel. El acceso requiere una cuenta con rol de moderador o administrador.

### 4. Ejecutar la aplicación móvil

Configura tu proyecto Firebase en `mobile/android/app/google-services.json`; el archivo `.example` indica la estructura, pero no sustituye una configuración válida. Para Google Maps en Android, añade tu clave restringida como `MAPS_API_KEY` en `mobile/android/local.properties`, conservando las rutas del SDK existentes.

```powershell
cd mobile
flutter pub get
flutter run --dart-define=API_BASE_URL=http://10.0.2.2:5000/api
```

`10.0.2.2` corresponde al equipo anfitrión desde el emulador Android. En un teléfono físico, utiliza una dirección de la API accesible desde ese dispositivo. Para Google Sign-In, configura también `GOOGLE_SERVER_CLIENT_ID` mediante `--dart-define` y el mismo identificador de cliente en el servidor.

### Servicios opcionales

| Servicio | Configuración |
| --- | --- |
| Recuperación por correo | Valores `Smtp:*` en la configuración privada del servidor. |
| Inicio con Google o Apple | Valores `Authentication:*` y configuración de la plataforma correspondiente. |
| Avisos push | `Firebase:Enabled`, `Firebase:ProjectId`, credenciales del servidor mediante Application Default Credentials y configuración Firebase de la app. |
| Almacenamiento S3 | `Storage:Provider=S3` y los valores privados de bucket, endpoint y acceso de `Storage:*`. |

## Seguridad y datos privados

Las contraseñas, claves JWT, cuentas de servicio, certificados, configuraciones Firebase y archivos `.env` deben permanecer fuera del control de versiones. Utiliza las plantillas de ejemplo y configura tus propios servicios.

El backend aplica permisos por rol, validaciones de archivos, comprobaciones de propiedad de los medios subidos y límites de solicitudes. Las imágenes se vuelven a codificar, se orientan y se eliminan sus metadatos antes de almacenarse. En producción, sirve la API mediante HTTPS y restringe las claves de mapas a las aplicaciones autorizadas.

Si una credencial se publicó anteriormente, revócala y rótala: retirarla de la versión actual no la invalida ni la elimina del historial de Git.
