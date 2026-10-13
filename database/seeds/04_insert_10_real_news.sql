-- Seed script: 10 real Dominican incident news with genuine photographs from source articles
-- User: Andy Henriquez (@edsen, c33427e6-a602-4ea2-b487-26f34baaaa25)


DO $seed$
DECLARE
    v_user_id uuid := 'c33427e6-a602-4ea2-b487-26f34baaaa25'::uuid;
    u1 uuid := 'c0c3f8f4-64a9-4fec-811a-6491fed0e6b2'::uuid;
    u2 uuid := 'a71a18c0-8a37-426a-953f-1f468e66ebb7'::uuid;
    u3 uuid := '15944c54-0e02-4c2b-9668-82d837eee18e'::uuid;
    u4 uuid := '6a885dd7-1d92-4154-bac7-b97f41ee4953'::uuid;
    
    p1 uuid := gen_random_uuid();
    p2 uuid := gen_random_uuid();
    p3 uuid := gen_random_uuid();
    p4 uuid := gen_random_uuid();
    p5 uuid := gen_random_uuid();
    p6 uuid := gen_random_uuid();
    p7 uuid := gen_random_uuid();
    p8 uuid := gen_random_uuid();
    p9 uuid := gen_random_uuid();
    p10 uuid := gen_random_uuid();
BEGIN
    -- Limpiar publicaciones anteriores del usuario para reemplazarlas limpiamente
    DELETE FROM "PostImages" WHERE "PostId" IN (SELECT "Id" FROM "Posts" WHERE "UserId" = v_user_id);
    DELETE FROM "PostReactions" WHERE "PostId" IN (SELECT "Id" FROM "Posts" WHERE "UserId" = v_user_id);
    DELETE FROM "Posts" WHERE "UserId" = v_user_id;

    -- 1. Camión volcado con maíz en Autopista Duarte KM 9
    INSERT INTO "Posts" ("Id", "UserId", "CategoryId", "Title", "Description", "Latitude", "Longitude", "LocationCoordinates", "Province", "Municipality", "Neighborhood", "AddressReference", "Status", "ViewsCount", "ReactionsCount", "CreatedAt", "UpdatedAt")
    VALUES (p1, v_user_id, 1, 
        'Camión cargado de maíz se vuelca e impacta autobús en la autopista Duarte',
        'Un camión de carga volcó su remolque en el kilómetro 9 de la autopista Duarte e impactó lateralmente a un autobús de pasajeros. El maíz quedó esparcido en el pavimento bloqueando dos carriles. Unidades de Digesett y Comipol viabilizan el paso.',
        18.4905, -69.9723, ST_SetSRID(ST_MakePoint(-69.9723, 18.4905), 4326)::geography,
        'Santo Domingo', 'Santo Domingo Oeste', 'Kilómetro 9', 'Autopista Duarte KM 9, próximo a la parada del Metro María Montez',
        1, 4, 1, NOW() - INTERVAL '15 minutes', NOW() - INTERVAL '15 minutes');

    INSERT INTO "PostImages" ("Id", "PostId", "ImageUrl", "ThumbnailUrl", "OrderIndex", "CreatedAt")
    VALUES (gen_random_uuid(), p1, '/uploads/c33427e6a6024ea2b48726f34baaaa25_abca415e81c94b6498d0dc2f5b3c665b.jpg', NULL, 0, NOW() - INTERVAL '15 minutes');

    -- 2. Accidente en Autopista 6 de Noviembre (Hatillo, San Cristóbal)
    INSERT INTO "Posts" ("Id", "UserId", "CategoryId", "Title", "Description", "Latitude", "Longitude", "LocationCoordinates", "Province", "Municipality", "Neighborhood", "AddressReference", "Status", "ViewsCount", "ReactionsCount", "CreatedAt", "UpdatedAt")
    VALUES (p2, v_user_id, 1,
        'Colisión vial entre camión de carga y motocicleta en la autopista 6 de Noviembre',
        'Fuerte choque en la autopista 6 de Noviembre a la altura de Hatillo entre un camión pesado y una motocicleta. El tránsito hacia San Cristóbal se encuentra totalmente congestionado con presencia de curiosos y agentes de la Digesett.',
        18.4312, -70.0825, ST_SetSRID(ST_MakePoint(-70.0825, 18.4312), 4326)::geography,
        'San Cristóbal', 'San Cristóbal', 'Hatillo', 'Autopista 6 de Noviembre, tramo Hatillo frente a estación de combustible',
        1, 6, 2, NOW() - INTERVAL '25 minutes', NOW() - INTERVAL '25 minutes');

    INSERT INTO "PostImages" ("Id", "PostId", "ImageUrl", "ThumbnailUrl", "OrderIndex", "CreatedAt")
    VALUES (gen_random_uuid(), p2, '/uploads/c33427e6a6024ea2b48726f34baaaa25_52a0d280caf847fe9dfdb904c8659d17.jpg', NULL, 0, NOW() - INTERVAL '25 minutes');

    -- 3. Choque de camiones en Circunvalación Santo Domingo (Batey El Naranjo)
    INSERT INTO "Posts" ("Id", "UserId", "CategoryId", "Title", "Description", "Latitude", "Longitude", "LocationCoordinates", "Province", "Municipality", "Neighborhood", "AddressReference", "Status", "ViewsCount", "ReactionsCount", "CreatedAt", "UpdatedAt")
    VALUES (p3, v_user_id, 1,
        'Choque múltiple de dos camiones y motocicleta en la Circunvalación Santo Domingo',
        'Impacto en cadena en la avenida Circunvalación de Santo Domingo próximo a El Naranjo. Tres ambulancias del 9-1-1 y personal de asistencia vial asisten a los conductores. Carril derecho inhabilitado por escombros.',
        18.5284, -69.7891, ST_SetSRID(ST_MakePoint(-69.7891, 18.5284), 4326)::geography,
        'Santo Domingo', 'Santo Domingo Este', 'El Naranjo', 'Avenida Circunvalación de Santo Domingo, sector Batey El Naranjo',
        1, 3, 1, NOW() - INTERVAL '40 minutes', NOW() - INTERVAL '40 minutes');

    INSERT INTO "PostImages" ("Id", "PostId", "ImageUrl", "ThumbnailUrl", "OrderIndex", "CreatedAt")
    VALUES (gen_random_uuid(), p3, '/uploads/c33427e6a6024ea2b48726f34baaaa25_7e08241da24c4b64b85acdfafb54b2b1.jpg', NULL, 0, NOW() - INTERVAL '40 minutes');

    -- 4. Hoyo profundo y alcantarilla abierta en Calle Galván
    INSERT INTO "Posts" ("Id", "UserId", "CategoryId", "Title", "Description", "Latitude", "Longitude", "LocationCoordinates", "Province", "Municipality", "Neighborhood", "AddressReference", "Status", "ViewsCount", "ReactionsCount", "CreatedAt", "UpdatedAt")
    VALUES (p4, v_user_id, 3,
        'Peligroso hoyo y alcantarilla abierta amenazan a conductores en calle Galván',
        'Imbornal sin tapa con más de cuatro pies de profundidad permanece abierto en plena vía en la calle Manuel de Jesús Galván. Vecinos colocaron ramas y un cono plástico improvisado para evitar caídas de vehículos y peatones.',
        18.4751, -69.8972, ST_SetSRID(ST_MakePoint(-69.8972, 18.4751), 4326)::geography,
        'Distrito Nacional', 'Santo Domingo de Guzmán', 'Gazcue', 'Calle Manuel de Jesús Galván casi esquina Francia',
        1, 5, 2, NOW() - INTERVAL '55 minutes', NOW() - INTERVAL '55 minutes');

    INSERT INTO "PostImages" ("Id", "PostId", "ImageUrl", "ThumbnailUrl", "OrderIndex", "CreatedAt")
    VALUES (gen_random_uuid(), p4, '/uploads/c33427e6a6024ea2b48726f34baaaa25_2cb20ecff0374f42847aab9f0822cf41.jpg', NULL, 0, NOW() - INTERVAL '55 minutes');

    -- 5. Incendio en apartaestudio en Avenida Lope de Vega
    INSERT INTO "Posts" ("Id", "UserId", "CategoryId", "Title", "Description", "Latitude", "Longitude", "LocationCoordinates", "Province", "Municipality", "Neighborhood", "AddressReference", "Status", "ViewsCount", "ReactionsCount", "CreatedAt", "UpdatedAt")
    VALUES (p5, v_user_id, 7,
        'Incendio consume apartaestudio residencial en la avenida Lope de Vega',
        'Fuego afectó por completo un apartaestudio ubicado en el tercer piso de un edificio en la avenida Lope de Vega. Cuatro unidades del Cuerpo de Bomberos del Distrito Nacional acudieron a sofocar las llamas y evacuar a los inquilinos.',
        18.4725, -69.9328, ST_SetSRID(ST_MakePoint(-69.9328, 18.4725), 4326)::geography,
        'Distrito Nacional', 'Santo Domingo de Guzmán', 'Piantini', 'Av. Lope de Vega esquina Fantino Falco',
        1, 7, 2, NOW() - INTERVAL '1 hour 15 minutes', NOW() - INTERVAL '1 hour 15 minutes');

    INSERT INTO "PostImages" ("Id", "PostId", "ImageUrl", "ThumbnailUrl", "OrderIndex", "CreatedAt")
    VALUES (gen_random_uuid(), p5, '/uploads/c33427e6a6024ea2b48726f34baaaa25_0b20ce71555c4f769c2ef4d48a18066f.jpg', NULL, 0, NOW() - INTERVAL '1 hour 15 minutes');

    -- 6. Fuego en surtidora de alimentos en La Ciénega de Santiago
    INSERT INTO "Posts" ("Id", "UserId", "CategoryId", "Title", "Description", "Latitude", "Longitude", "LocationCoordinates", "Province", "Municipality", "Neighborhood", "AddressReference", "Status", "ViewsCount", "ReactionsCount", "CreatedAt", "UpdatedAt")
    VALUES (p6, v_user_id, 7,
        'Fuego destruye almacén y surtidora de alimentos en La Ciénega de Santiago',
        'Siniestro de gran escala arrasó con la estructura e inventario de una distribuidora de alimentos en el sector La Ciénega durante la madrugada. Cuadrillas de Bomberos de Santiago lograron controlar el fuego tras varias horas de labores.',
        19.4678, -70.7182, ST_SetSRID(ST_MakePoint(-70.7182, 19.4678), 4326)::geography,
        'Santiago', 'Santiago de los Caballeros', 'La Ciénega', 'Calle Principal de La Ciénega, próximo a la autopista Joaquín Balaguer',
        1, 4, 1, NOW() - INTERVAL '1 hour 30 minutes', NOW() - INTERVAL '1 hour 30 minutes');

    INSERT INTO "PostImages" ("Id", "PostId", "ImageUrl", "ThumbnailUrl", "OrderIndex", "CreatedAt")
    VALUES (gen_random_uuid(), p6, '/uploads/c33427e6a6024ea2b48726f34baaaa25_9584e9ad2286465b885220f69a0fa654.jpg', NULL, 0, NOW() - INTERVAL '1 hour 30 minutes');

    -- 7. Inundaciones urbanas en avenidas de Santo Domingo
    INSERT INTO "Posts" ("Id", "UserId", "CategoryId", "Title", "Description", "Latitude", "Longitude", "LocationCoordinates", "Province", "Municipality", "Neighborhood", "AddressReference", "Status", "ViewsCount", "ReactionsCount", "CreatedAt", "UpdatedAt")
    VALUES (p7, v_user_id, 4,
        'Intensas lluvias anegan principales avenidas y dejan vehículos varados en Santo Domingo',
        'Fuertes aguaceros provocaron severas inundaciones en varios tramos viales del Gran Santo Domingo por deficiencias del drenaje pluvial. Decenas de conductores quedaron atrapados en medio del agua que cubrió los neumáticos de los vehículos.',
        18.4789, -69.9451, ST_SetSRID(ST_MakePoint(-69.9451, 18.4789), 4326)::geography,
        'Distrito Nacional', 'Santo Domingo de Guzmán', 'Los Jardines', 'Avenida John F. Kennedy con Av. Núñez de Cáceres',
        1, 5, 2, NOW() - INTERVAL '1 hour 50 minutes', NOW() - INTERVAL '1 hour 50 minutes');

    INSERT INTO "PostImages" ("Id", "PostId", "ImageUrl", "ThumbnailUrl", "OrderIndex", "CreatedAt")
    VALUES (gen_random_uuid(), p7, '/uploads/c33427e6a6024ea2b48726f34baaaa25_0a21c1d802f14585af60e3d46cb1e5ce.jpg', NULL, 0, NOW() - INTERVAL '1 hour 50 minutes');

    -- 8. Vertederos de basura en Santo Domingo Este
    INSERT INTO "Posts" ("Id", "UserId", "CategoryId", "Title", "Description", "Latitude", "Longitude", "LocationCoordinates", "Province", "Municipality", "Neighborhood", "AddressReference", "Status", "ViewsCount", "ReactionsCount", "CreatedAt", "UpdatedAt")
    VALUES (p8, v_user_id, 5,
        'Vertederos improvisados reaparecen en aceras y esquinas de Santo Domingo Este',
        'Montones de fundas de basura, desechos plásticos y gomas viejas invaden las aceras y pasos peatonales en Alma Rosa II y Mendoza. Moradores denuncian tardanza en el paso de los camiones recolectores y el mal olor persistente.',
        18.4891, -69.8452, ST_SetSRID(ST_MakePoint(-69.8452, 18.4891), 4326)::geography,
        'Santo Domingo', 'Santo Domingo Este', 'Alma Rosa II', 'Calle Costa Rica casi esquina Carretera de Mendoza',
        1, 3, 1, NOW() - INTERVAL '2 hours 10 minutes', NOW() - INTERVAL '2 hours 10 minutes');

    INSERT INTO "PostImages" ("Id", "PostId", "ImageUrl", "ThumbnailUrl", "OrderIndex", "CreatedAt")
    VALUES (gen_random_uuid(), p8, '/uploads/c33427e6a6024ea2b48726f34baaaa25_a4e45666fe4641d4a265006c79a5ba32.jpg', NULL, 0, NOW() - INTERVAL '2 hours 10 minutes');

    -- 9. Árbol caído derriba cables en Los Ríos
    INSERT INTO "Posts" ("Id", "UserId", "CategoryId", "Title", "Description", "Latitude", "Longitude", "LocationCoordinates", "Province", "Municipality", "Neighborhood", "AddressReference", "Status", "ViewsCount", "ReactionsCount", "CreatedAt", "UpdatedAt")
    VALUES (p9, v_user_id, 7,
        'Gigantesco árbol colapsa de raíz y derriba cables del tendido eléctrico en Los Ríos',
        'Árbol de gran tamaño se desplomó desde la raíz atravesando por completo la calle Paseo del Arroyo. El colapso desprendió cables eléctricos dejando sin luz a varias viviendas y bloqueando el tránsito vehicular en ambas direcciones.',
        18.4982, -69.9543, ST_SetSRID(ST_MakePoint(-69.9543, 18.4982), 4326)::geography,
        'Distrito Nacional', 'Santo Domingo de Guzmán', 'Los Ríos', 'Calle Paseo del Arroyo frente al sector La Esperanza',
        1, 2, 1, NOW() - INTERVAL '2 hours 35 minutes', NOW() - INTERVAL '2 hours 35 minutes');

    INSERT INTO "PostImages" ("Id", "PostId", "ImageUrl", "ThumbnailUrl", "OrderIndex", "CreatedAt")
    VALUES (gen_random_uuid(), p9, '/uploads/c33427e6a6024ea2b48726f34baaaa25_eeb714cffcc94e44ade838ab28a6c889.jpg', NULL, 0, NOW() - INTERVAL '2 hours 35 minutes');

    -- 10. Cierre y mantenimiento de estructura en Puente Flotante
    INSERT INTO "Posts" ("Id", "UserId", "CategoryId", "Title", "Description", "Latitude", "Longitude", "LocationCoordinates", "Province", "Municipality", "Neighborhood", "AddressReference", "Status", "ViewsCount", "ReactionsCount", "CreatedAt", "UpdatedAt")
    VALUES (p10, v_user_id, 3,
        'Obras Públicas extiende cierre del Puente Flotante por trabajos técnicos en su estructura',
        'El Ministerio de Obras Públicas y Comunicaciones realiza labores mecánicas y mantenimiento sobre las barcazas flotantes en el Río Ozama. El paso entre el Distrito Nacional y Santo Domingo Este permanece cerrado mientras se ejecutan los trabajos.',
        18.4735, -69.8789, ST_SetSRID(ST_MakePoint(-69.8789, 18.4735), 4326)::geography,
        'Santo Domingo', 'Santo Domingo Este', 'Villa Duarte', 'Aproximación oriental al Puente Flotante sobre el Río Ozama',
        1, 3, 1, NOW() - INTERVAL '3 hours', NOW() - INTERVAL '3 hours');

    INSERT INTO "PostImages" ("Id", "PostId", "ImageUrl", "ThumbnailUrl", "OrderIndex", "CreatedAt")
    VALUES (gen_random_uuid(), p10, '/uploads/c33427e6a6024ea2b48726f34baaaa25_372cc9f10a084144a709bbda3d56ea9e.jpg', NULL, 0, NOW() - INTERVAL '3 hours');

    -- Reacciones reales de prueba de otros usuarios de la comunidad para interacción inicial
    -- Cada publicación tiene exactamente 1 o 2 reacciones, coincidiendo exactamente con ReactionsCount
    INSERT INTO "PostReactions" ("PostId", "UserId", "ReactionType", "CreatedAt") VALUES
        (p1, u1, 2, NOW() - INTERVAL '10 minutes'),
        
        (p2, u1, 8, NOW() - INTERVAL '20 minutes'),
        (p2, u2, 2, NOW() - INTERVAL '18 minutes'),

        (p3, u3, 2, NOW() - INTERVAL '30 minutes'),

        (p4, u2, 8, NOW() - INTERVAL '45 minutes'),
        (p4, u4, 2, NOW() - INTERVAL '35 minutes'),

        (p5, u1, 3, NOW() - INTERVAL '1 hour'),
        (p5, u4, 2, NOW() - INTERVAL '50 minutes'),

        (p6, u2, 2, NOW() - INTERVAL '1 hour 10 minutes'),

        (p7, u1, 2, NOW() - INTERVAL '1 hour 40 minutes'),
        (p7, u3, 8, NOW() - INTERVAL '1 hour 30 minutes'),

        (p8, u4, 8, NOW() - INTERVAL '1 hour 55 minutes'),

        (p9, u3, 2, NOW() - INTERVAL '2 hours 15 minutes'),

        (p10, u1, 8, NOW() - INTERVAL '2 hours 40 minutes');

END $seed$;
