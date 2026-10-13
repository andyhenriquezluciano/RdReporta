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
    -- 1. Inundación Luperón
    INSERT INTO "Posts" ("Id", "UserId", "CategoryId", "Title", "Description", "Latitude", "Longitude", "LocationCoordinates", "Province", "Municipality", "Neighborhood", "AddressReference", "Status", "ViewsCount", "ReactionsCount", "CreatedAt", "UpdatedAt")
    VALUES (p1, v_user_id, 4, 
        'Rotura en tubería matriz de la CAASD inunda tramo de la Av. Luperón',
        'Fuga masiva de agua potable provocada por la rotura de una tubería matriz de 30 pulgadas. El agua ha anegado ambos carriles en sentido norte-sur generando fuerte congestión vehicular. Se solicita asistencia urgente de las brigadas de la CAASD.',
        18.4715, -69.9678, ST_SetSRID(ST_MakePoint(-69.9678, 18.4715), 4326)::geography,
        'Distrito Nacional', 'Santo Domingo de Guzmán', 'Los Prados', 'Av. Luperón esq. Gustavo Mejía Ricart, frente a Pinturas Tropical',
        1, 285, 38, NOW() - INTERVAL '1 day 2 hours', NOW() - INTERVAL '1 day 2 hours');

    INSERT INTO "PostImages" ("Id", "PostId", "ImageUrl", "ThumbnailUrl", "OrderIndex", "CreatedAt")
    VALUES (gen_random_uuid(), p1, '/uploads/c33427e6a6024ea2b48726f34baaaa25_d9f5d85dcff24f338a3a93b8bf42ef93.jpg', NULL, 0, NOW() - INTERVAL '1 day 2 hours');

    -- 2. Semáforos 27 con Gómez
    INSERT INTO "Posts" ("Id", "UserId", "CategoryId", "Title", "Description", "Latitude", "Longitude", "LocationCoordinates", "Province", "Municipality", "Neighborhood", "AddressReference", "Status", "ViewsCount", "ReactionsCount", "CreatedAt", "UpdatedAt")
    VALUES (p2, v_user_id, 2,
        'Semáforos apagados en la Av. 27 de Febrero con Máximo Gómez generan caos vial',
        'Falla general del suministro eléctrico en la intersección central mantiene los semáforos totalmente fuera de servicio en plena hora pico. Agentes de la DIGESETT intentan viabilizar manualmente pero el tapón vehicular se extiende hasta el túnel de la Lincoln.',
        18.4746, -69.9103, ST_SetSRID(ST_MakePoint(-69.9103, 18.4746), 4326)::geography,
        'Distrito Nacional', 'Santo Domingo de Guzmán', 'Gazcue', 'Intersección Av. 27 de Febrero con Av. Máximo Gómez',
        1, 340, 45, NOW() - INTERVAL '18 hours', NOW() - INTERVAL '18 hours');

    INSERT INTO "PostImages" ("Id", "PostId", "ImageUrl", "ThumbnailUrl", "OrderIndex", "CreatedAt")
    VALUES (gen_random_uuid(), p2, '/uploads/c33427e6a6024ea2b48726f34baaaa25_3afd2a2d015d411cbb8bddfc1d43c6b1.jpg', NULL, 0, NOW() - INTERVAL '18 hours');

    -- 3. Cráter Autopista Duarte
    INSERT INTO "Posts" ("Id", "UserId", "CategoryId", "Title", "Description", "Latitude", "Longitude", "LocationCoordinates", "Province", "Municipality", "Neighborhood", "AddressReference", "Status", "ViewsCount", "ReactionsCount", "CreatedAt", "UpdatedAt")
    VALUES (p3, v_user_id, 3,
        'Cráter profundo en el pavimento daña vehículos en la Autopista Duarte KM 13',
        'Bache de gran profundidad sin señalización preventiva ha ocasionado pinchazos de neumáticos y daños severos en el tren delantero a más de 8 vehículos en la tarde de hoy. Choferes piden bacheo urgente al MOPC.',
        18.4985, -69.9912, ST_SetSRID(ST_MakePoint(-69.9912, 18.4985), 4326)::geography,
        'Santo Domingo', 'Santo Domingo Oeste', 'La Venta', 'Autopista Duarte KM 13, carril derecho dirección hacia el Cibao',
        1, 210, 29, NOW() - INTERVAL '2 days 3 hours', NOW() - INTERVAL '2 days 3 hours');

    INSERT INTO "PostImages" ("Id", "PostId", "ImageUrl", "ThumbnailUrl", "OrderIndex", "CreatedAt")
    VALUES (gen_random_uuid(), p3, '/uploads/c33427e6a6024ea2b48726f34baaaa25_e9eb24f097194f4baa1d07e8114edd17.jpg', NULL, 0, NOW() - INTERVAL '2 days 3 hours');

    -- 4. Poste derribado Villa Mella
    INSERT INTO "Posts" ("Id", "UserId", "CategoryId", "Title", "Description", "Latitude", "Longitude", "LocationCoordinates", "Province", "Municipality", "Neighborhood", "AddressReference", "Status", "ViewsCount", "ReactionsCount", "CreatedAt", "UpdatedAt")
    VALUES (p4, v_user_id, 7,
        'Poste derribado con cables de alta tensión sobre acera peatonal en Villa Mella',
        'Poste del tendido eléctrico colapsó tras los fuertes vientos dejando cables energizados sobre el paso peatonal frente a varios comercios. Zona de alto peligro para transeúntes y estudiantes. Se requiere presencia de Edeeste y Bomberos.',
        18.5442, -69.9024, ST_SetSRID(ST_MakePoint(-69.9024, 18.5442), 4326)::geography,
        'Santo Domingo', 'Santo Domingo Norte', 'Villa Mella', 'Av. Hermanas Mirabal, a 100 metros de la estación Mamá Tingó',
        1, 195, 32, NOW() - INTERVAL '1 day 8 hours', NOW() - INTERVAL '1 day 8 hours');

    INSERT INTO "PostImages" ("Id", "PostId", "ImageUrl", "ThumbnailUrl", "OrderIndex", "CreatedAt")
    VALUES (gen_random_uuid(), p4, '/uploads/c33427e6a6024ea2b48726f34baaaa25_b46904517158494cb5f74571a485dd6e.jpg', NULL, 0, NOW() - INTERVAL '1 day 8 hours');

    -- 5. Basura Herrera
    INSERT INTO "Posts" ("Id", "UserId", "CategoryId", "Title", "Description", "Latitude", "Longitude", "LocationCoordinates", "Province", "Municipality", "Neighborhood", "AddressReference", "Status", "ViewsCount", "ReactionsCount", "CreatedAt", "UpdatedAt")
    VALUES (p5, v_user_id, 5,
        'Vertedero improvisado arropa acera escolar y genera foco infeccioso en Herrera',
        'Gran cúmulo de desechos sólidos y escombros lleva más de ocho días sin ser retirado por los camiones recolectores del ayuntamiento. Malos olores y plagas afectan el paso obligatorio de niños hacia el centro educativo.',
        18.4682, -69.9821, ST_SetSRID(ST_MakePoint(-69.9821, 18.4682), 4326)::geography,
        'Santo Domingo', 'Santo Domingo Oeste', 'Buenos Aires de Herrera', 'Calle México esquina Respaldo 4, próximo a la escuela básica',
        1, 175, 24, NOW() - INTERVAL '3 days 1 hour', NOW() - INTERVAL '3 days 1 hour');

    INSERT INTO "PostImages" ("Id", "PostId", "ImageUrl", "ThumbnailUrl", "OrderIndex", "CreatedAt")
    VALUES (gen_random_uuid(), p5, '/uploads/c33427e6a6024ea2b48726f34baaaa25_4b88eab238774386908071b8deeb00d3.jpg', NULL, 0, NOW() - INTERVAL '3 days 1 hour');

    -- 6. Choque Circunvalación Santiago
    INSERT INTO "Posts" ("Id", "UserId", "CategoryId", "Title", "Description", "Latitude", "Longitude", "LocationCoordinates", "Province", "Municipality", "Neighborhood", "AddressReference", "Status", "ViewsCount", "ReactionsCount", "CreatedAt", "UpdatedAt")
    VALUES (p6, v_user_id, 1,
        'Colisión múltiple entre camión y dos autos en la Circunvalación Norte de Santiago',
        'Impacto en cadena que involucra una patana de carga y dos automóviles ligeros mantiene cerrado el carril este-oeste. Unidades de rescate del 9-1-1 y Asistencia Vial de Obras Públicas asisten a los involucrados. Tránsito detenido.',
        19.4930, -70.6620, ST_SetSRID(ST_MakePoint(-70.6620, 19.4930), 4326)::geography,
        'Santiago', 'Santiago de los Caballeros', 'Gurabo', 'Circunvalación Norte KM 8, próximo a la estación de peaje',
        1, 410, 52, NOW() - INTERVAL '12 hours', NOW() - INTERVAL '12 hours');

    INSERT INTO "PostImages" ("Id", "PostId", "ImageUrl", "ThumbnailUrl", "OrderIndex", "CreatedAt")
    VALUES (gen_random_uuid(), p6, '/uploads/c33427e6a6024ea2b48726f34baaaa25_7aaa0c80e2bc490ca580340c1b4b728f.jpg', NULL, 0, NOW() - INTERVAL '12 hours');

    -- 7. Deslizamiento Puente Flotante
    INSERT INTO "Posts" ("Id", "UserId", "CategoryId", "Title", "Description", "Latitude", "Longitude", "LocationCoordinates", "Province", "Municipality", "Neighborhood", "AddressReference", "Status", "ViewsCount", "ReactionsCount", "CreatedAt", "UpdatedAt")
    VALUES (p7, v_user_id, 3,
        'Hundimiento de asfalto y grieta en la rampa de acceso al Puente Flotante',
        'Desplazamiento del terreno provoca desnivel pronunciado y grietas peligrosas al entrar al puente desde Sans Soucí. Conductores reducen velocidad drásticamente para evitar accidentes. Se requiere inspección del MOPC.',
        18.4735, -69.8789, ST_SetSRID(ST_MakePoint(-69.8789, 18.4735), 4326)::geography,
        'Santo Domingo', 'Santo Domingo Este', 'Villa Duarte', 'Rampa oriental de aproximación al Puente Flotante sobre el Río Ozama',
        1, 260, 31, NOW() - INTERVAL '2 days 10 hours', NOW() - INTERVAL '2 days 10 hours');

    INSERT INTO "PostImages" ("Id", "PostId", "ImageUrl", "ThumbnailUrl", "OrderIndex", "CreatedAt")
    VALUES (gen_random_uuid(), p7, '/uploads/c33427e6a6024ea2b48726f34baaaa25_1fb12777b1234cdf94ffce21a9db6632.jpg', NULL, 0, NOW() - INTERVAL '2 days 10 hours');

    -- 8. Avería eléctrica Piantini / Naco
    INSERT INTO "Posts" ("Id", "UserId", "CategoryId", "Title", "Description", "Latitude", "Longitude", "LocationCoordinates", "Province", "Municipality", "Neighborhood", "AddressReference", "Status", "ViewsCount", "ReactionsCount", "CreatedAt", "UpdatedAt")
    VALUES (p8, v_user_id, 6,
        'Avería en transformador principal deja sin servicio eléctrico a Naco y Piantini',
        'Estallido de transformador de distribución dejó a oscuras múltiples torres residenciales y locales comerciales. Residentes reportan más de 4 horas continuas sin energía y reclaman restablecimiento inmediato a Edesur.',
        18.4782, -69.9325, ST_SetSRID(ST_MakePoint(-69.9325, 18.4782), 4326)::geography,
        'Distrito Nacional', 'Santo Domingo de Guzmán', 'Ensanche Naco', 'Calle Fantino Falco esquina Gracita Álvarez',
        1, 220, 27, NOW() - INTERVAL '1 day 14 hours', NOW() - INTERVAL '1 day 14 hours');

    INSERT INTO "PostImages" ("Id", "PostId", "ImageUrl", "ThumbnailUrl", "OrderIndex", "CreatedAt")
    VALUES (gen_random_uuid(), p8, '/uploads/c33427e6a6024ea2b48726f34baaaa25_531ff968209043aeaf3aa7b600fa28b8.jpg', NULL, 0, NOW() - INTERVAL '1 day 14 hours');

    -- 9. Árbol Anacaona
    INSERT INTO "Posts" ("Id", "UserId", "CategoryId", "Title", "Description", "Latitude", "Longitude", "LocationCoordinates", "Province", "Municipality", "Neighborhood", "AddressReference", "Status", "ViewsCount", "ReactionsCount", "CreatedAt", "UpdatedAt")
    VALUES (p9, v_user_id, 7,
        'Árbol derribado por ráfagas de viento bloquea ambos carriles de la Av. Anacaona',
        'Enorme árbol cayó transversalmente sobre la calzada obstruyendo por completo el tránsito vehicular en dirección a la Luperón. Se solicita intervención de cuadrillas del ADN con motosierras para liberar la vía pública.',
        18.4485, -69.9620, ST_SetSRID(ST_MakePoint(-69.9620, 18.4485), 4326)::geography,
        'Distrito Nacional', 'Santo Domingo de Guzmán', 'Los Cacicazgos', 'Av. Anacaona frente a la puerta 5 del Parque Mirador Sur',
        1, 185, 22, NOW() - INTERVAL '2 days 18 hours', NOW() - INTERVAL '2 days 18 hours');

    INSERT INTO "PostImages" ("Id", "PostId", "ImageUrl", "ThumbnailUrl", "OrderIndex", "CreatedAt")
    VALUES (gen_random_uuid(), p9, '/uploads/c33427e6a6024ea2b48726f34baaaa25_feb8fb660b804487aad3d8fa9d3b2995.jpg', NULL, 0, NOW() - INTERVAL '2 days 18 hours');

    -- 10. Luminarias San Cristóbal
    INSERT INTO "Posts" ("Id", "UserId", "CategoryId", "Title", "Description", "Latitude", "Longitude", "LocationCoordinates", "Province", "Municipality", "Neighborhood", "AddressReference", "Status", "ViewsCount", "ReactionsCount", "CreatedAt", "UpdatedAt")
    VALUES (p10, v_user_id, 8,
        'Sustracción de cables y luminarias deja a oscuras el Parque Central de San Cristóbal',
        'Comerciantes y visitantes denuncian el robo reiterado de cableado eléctrico y más de diez faroles LED en la última semana. Exigen mayor patrullaje de la Policía Nacional y reposición del alumbrado al ayuntamiento.',
        18.4168, -70.1085, ST_SetSRID(ST_MakePoint(-70.1085, 18.4168), 4326)::geography,
        'San Cristóbal', 'San Cristóbal', 'Centro', 'Parque Central 6 de Noviembre, frente a la Gobernación Provincial',
        1, 160, 19, NOW() - INTERVAL '3 days 6 hours', NOW() - INTERVAL '3 days 6 hours');

    INSERT INTO "PostImages" ("Id", "PostId", "ImageUrl", "ThumbnailUrl", "OrderIndex", "CreatedAt")
    VALUES (gen_random_uuid(), p10, '/uploads/c33427e6a6024ea2b48726f34baaaa25_92edacf582dd4d4b9cc44d1b4f7b8373.jpg', NULL, 0, NOW() - INTERVAL '3 days 6 hours');

    -- Insertar reacciones de otros usuarios activos para interacción comunitaria
    INSERT INTO "PostReactions" ("PostId", "UserId", "ReactionType", "CreatedAt") VALUES
        (p1, u1, 2, NOW() - INTERVAL '1 day 1 hour'),
        (p1, u2, 8, NOW() - INTERVAL '1 day'),
        (p1, u3, 4, NOW() - INTERVAL '23 hours'),
        
        (p2, u1, 8, NOW() - INTERVAL '17 hours'),
        (p2, u2, 2, NOW() - INTERVAL '16 hours'),
        (p2, u3, 4, NOW() - INTERVAL '15 hours'),
        (p2, u4, 2, NOW() - INTERVAL '14 hours'),

        (p3, u1, 8, NOW() - INTERVAL '2 days'),
        (p3, u2, 2, NOW() - INTERVAL '1 day 20 hours'),

        (p4, u1, 3, NOW() - INTERVAL '1 day 7 hours'),
        (p4, u3, 2, NOW() - INTERVAL '1 day 6 hours'),
        (p4, u4, 2, NOW() - INTERVAL '1 day 5 hours'),

        (p5, u1, 8, NOW() - INTERVAL '2 days 20 hours'),
        (p5, u2, 8, NOW() - INTERVAL '2 days 18 hours'),

        (p6, u1, 3, NOW() - INTERVAL '11 hours'),
        (p6, u2, 9, NOW() - INTERVAL '10 hours'),
        (p6, u3, 2, NOW() - INTERVAL '9 hours'),
        (p6, u4, 3, NOW() - INTERVAL '8 hours'),

        (p7, u1, 2, NOW() - INTERVAL '2 days 8 hours'),
        (p7, u3, 8, NOW() - INTERVAL '2 days 7 hours'),

        (p8, u1, 8, NOW() - INTERVAL '1 day 12 hours'),
        (p8, u2, 2, NOW() - INTERVAL '1 day 10 hours'),

        (p9, u1, 3, NOW() - INTERVAL '2 days 16 hours'),
        (p9, u2, 9, NOW() - INTERVAL '2 days 15 hours'),

        (p10, u1, 8, NOW() - INTERVAL '3 days 4 hours'),
        (p10, u3, 2, NOW() - INTERVAL '3 days 2 hours');

    -- Actualizar puntuación de reputación de Andy Henriquez (edsen)
    UPDATE "Users" 
    SET "ReputationScore" = "ReputationScore" + 30,
        "ReputationLevel" = 1,
        "UpdatedAt" = NOW()
    WHERE "Id" = v_user_id;

END $seed$;
