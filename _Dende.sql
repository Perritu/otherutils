-- Users table.
CREATE TABLE IF NOT EXISTS users (
    user bigint unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id interno de usuario',
    username varchar(50) NOT NULL COMMENT 'Nombre de usuario',
    password char(96) NOT NULL COMMENT 'Hash de contraseña',
    salt char(32) NOT NULL COMMENT 'Salt de contraseña',
    email varchar(100) NOT NULL COMMENT 'Correo electrónico',
    phone varchar(15) NOT NULL COMMENT 'Número de teléfono',
    firstName varchar(50) NOT NULL COMMENT 'Nombre',
    lastName varchar(50) NOT NULL COMMENT 'Apellido',
    PRIMARY KEY (user)
);
-- Roles table.
CREATE TABLE IF NOT EXISTS roles (
    role bigint unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id interno de rol',
    name varchar(50) NOT NULL COMMENT 'Nombre de rol',
    dashPermission int unsigned NOT NULL COMMENT 'Permisos a dashboards (en bitwise)',
    PRIMARY KEY (role)
);
CREATE TABLE IF NOT EXISTS user_roles (
    user bigint unsigned NOT NULL COMMENT 'Id interno de usuario',
    role bigint unsigned NOT NULL COMMENT 'Id interno de rol',
    PRIMARY KEY (user, role),
    FOREIGN KEY (user) REFERENCES users(user) ON DELETE CASCADE,
    FOREIGN KEY (role) REFERENCES roles(role) ON DELETE CASCADE ON UPDATE CASCADE
);
-- Dashboards permissions table.
CREATE TABLE IF NOT EXISTS dash_permissions (
    dash varchar(50) NOT NULL COMMENT 'Nombre e identificador de dashboard',
    requiredPermission int unsigned NOT NULL COMMENT 'Permisos requeridos',
    PRIMARY KEY (dash)
);
-- Students table.
CREATE TABLE IF NOT EXISTS students (
    student bigint unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id interno de estudiante',
    user bigint unsigned NOT NULL COMMENT 'Id de usuario asociado',
    PRIMARY KEY (student),
    FOREIGN KEY (user) REFERENCES users(user) ON DELETE CASCADE ON UPDATE CASCADE
);