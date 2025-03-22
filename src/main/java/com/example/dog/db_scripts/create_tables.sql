CREATE TABLE `users` (
   `id`  INT AUTO_INCREMENT PRIMARY KEY,  -- Identificador único del personal de la clínica veterinaria
  `username` VARCHAR(50) NOT NULL,
  `password` VARCHAR(50) NOT NULL,
  `cargo`  VARCHAR(50) NOT NULL,
  `enabled` TINYINT NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `owners` (
  `id` INT AUTO_INCREMENT PRIMARY KEY,  -- Identificador único del dueño del perro
  `owner_username` VARCHAR(100) NOT NULL,  -- Nombre del dueño del perro
  `dog_name` VARCHAR(100) NOT NULL,             -- Nombre del perro
  `enabled` TINYINT NOT NULL
  ) ENGINE=InnoDB DEFAULT CHARSET=latin1;
  
  
CREATE TABLE `employed` (
  `id` INT AUTO_INCREMENT PRIMARY KEY, -- Identificador único del estado del perro
  `dog_name` INT NOT NULL,
  `id_user` INT NOT NULL,
  `username` VARCHAR(50) NOT NULL,
  `employed_status` BOOLEAN NOT NULL, -- Estado de empleo (TRUE/FALSE)
  `enabled` TINYINT NOT NULL,
  FOREIGN KEY (`dog_name`) REFERENCES `owners`(`id`),
  FOREIGN KEY (`id_user`) REFERENCES `users`(`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/**/