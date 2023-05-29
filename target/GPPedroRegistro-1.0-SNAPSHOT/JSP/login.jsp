<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Iniciar Sesi�n</title>
</head>
<body>
    <h1>Iniciar Sesi�n</h1>
    <form action="user/login" method="post">
        Usuario: <input type="text" name="username" required><br>
        Contrase�a: <input type="password" name="password" required><br>
        <input type="submit" value="Iniciar Sesi�n">
    </form>
</body>
</html>
