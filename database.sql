/**
 * Script de creación de la base de datos para el Servicio Web de Autenticación
 * Evidencia de desempeño: GA7-220501096-AA5-EV01
 * 
 * Este script crea la base de datos y la tabla necesaria para el almacenamiento
 * de usuarios y sus credenciales.
 */

-- Crear la base de datos si no existe
CREATE DATABASE IF NOT EXISTS auth_db;

-- Seleccionar la base de datos para su uso
USE auth_db;

-- Crear la tabla de usuarios con los campos necesarios
CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,    -- Identificador único autoincremental
    username VARCHAR(50) NOT NULL UNIQUE, -- Nombre de usuario (único)
    password VARCHAR(50) NOT NULL,        -- Contraseña del usuario
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP  -- Fecha de creación del registro
); 