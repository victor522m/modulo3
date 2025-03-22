INSERT INTO `users` (`username`, `password`, `cargo`, `enabled`) 
VALUES
('jdoe', 'securepassword1', 'director', 1),       -- Un solo director
('asmith', 'securepassword2', 'veterinario', 1),  -- Veterinario
('mjones', 'securepassword3', 'veterinario', 0);  -- Veterinario (registro deshabilitado)

INSERT INTO `owners` (`owner_username`, `dog_name`, `enabled`)
VALUES
('María López', 'Buddy', 1),    -- Propietaria activa de Buddy
('Carlos García', 'Max', 1),    -- Propietario activo de Max
('Lucía Fernández', 'Charlie', 1), -- Propietaria activa de Charlie
('Javier Martínez', 'Rocky', 0), -- Propietario deshabilitado de Rocky
('Ana Pérez', 'Luna', 1);       -- Propietaria activa de Luna

INSERT INTO `employed` (`dog_name`, `id_user`, `username`, `employed_status`, `enabled`) 
VALUES
(2, 2, 'asmith', TRUE, 1),     -- El perro con ID 2 está empleado por el usuario con ID 2 (veterinario)
(3, 3, 'mjones', FALSE, 0),    -- El perro con ID 3 está empleado por el usuario con ID 3 (veterinario), registro deshabilitado
(4, 2, 'asmith', TRUE, 1),     -- El perro con ID 4 está empleado por el usuario con ID 2 (veterinario)
(5, 3, 'mjones', TRUE, 1),     -- El perro con ID 5 está empleado por el usuario con ID 3 (veterinario)
(1, 2, 'asmith', FALSE, 1);    -- El perro con ID 1 está empleado por el usuario con ID 2 (veterinario)



/**/