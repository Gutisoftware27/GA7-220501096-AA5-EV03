# API de Autenticación - GA7-220501096-AA5-EV03

Este proyecto implementa una API RESTful para la autenticación de usuarios, desarrollado como parte de la evidencia de desempeño GA7-220501096-AA5-EV03: "Diseño y desarrollo de servicios web - proyecto".

## Equipo de Desarrollo
- Isabel Yepes
- Yenifer Montealegre
- Juan Gutierrez

## Características

- Registro de usuarios
- Inicio de sesión con JWT
- Documentación con Swagger
- Encriptación de contraseñas
- Manejo de errores
- Validación de datos

## Requisitos Previos

- Node.js (v14 o superior)
- MySQL (v8.0 o superior)
- npm o yarn

## Instalación

1. Clonar el repositorio:
```bash
git clone https://github.com/isabelyb/GA7-220501096-AA5-EV03.git
cd GA7-220501096-AA5-EV03
```

2. Instalar dependencias:
```bash
npm install
```

3. Configurar variables de entorno:
Crear un archivo `.env` en la raíz del proyecto con el siguiente contenido:
```env
# Configuración del servidor
PORT=3000
NODE_ENV=development

# Configuración de la base de datos
DB_HOST=localhost
DB_USER=root
DB_PASSWORD=
DB_NAME=auth_db

# Configuración de JWT
JWT_SECRET=clave_secreta_para_jwt_123
JWT_EXPIRES_IN=24h
```

4. Configurar la base de datos:
```bash
mysql -u root -p < database.sql
```

## Uso

1. Iniciar el servidor en modo desarrollo:
```bash
npm run dev
```

2. Iniciar el servidor en modo producción:
```bash
npm start
```

## Documentación de la API

La documentación completa de la API está disponible en:
```
http://localhost:3000/api-docs
```

### Endpoints Principales

#### Registro de Usuario
- **POST** `/api/auth/register`
- **Body**:
  ```json
  {
    "username": "usuario",
    "password": "contraseña"
  }
  ```

#### Inicio de Sesión
- **POST** `/api/auth/login`
- **Body**:
  ```json
  {
    "username": "usuario",
    "password": "contraseña"
  }
  ```

## Estructura del Proyecto

```
src/
├── config/         # Configuraciones
├── controllers/    # Controladores
├── middleware/     # Middlewares
├── routes/         # Rutas
└── utils/          # Utilidades
```

## Seguridad

- Las contraseñas se almacenan encriptadas usando bcrypt
- Autenticación basada en JWT
- Validación de datos de entrada
- Manejo seguro de errores

## Contribución

1. Fork el proyecto
2. Crear una rama para tu feature (`git checkout -b feature/AmazingFeature`)
3. Commit tus cambios (`git commit -m 'Add some AmazingFeature'`)
4. Push a la rama (`git push origin feature/AmazingFeature`)
5. Abrir un Pull Request

## Licencia

Este proyecto está bajo la Licencia MIT - ver el archivo [LICENSE](LICENSE) para más detalles.