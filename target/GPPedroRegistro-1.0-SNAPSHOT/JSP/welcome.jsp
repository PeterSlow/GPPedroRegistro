<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Bienvenido</title>
</head>
<body>
    <h1>Bienvenido, ${user.username}!</h1>
    <p>Último acceso: ${user.ultimoAcceso}</p>
    <p>Rol: ${user.rol}</p>
</body>
</html>
