<%-- 
    Document   : success
    Created on : 11/08/2024, 12:44:57 p. m.
    Author     : Agarc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Autenticación Exitosa</title>
    <style>
        body {
            background-image: url('${pageContext.request.contextPath}/UI2.jpeg');
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            font-family: Arial, sans-serif;
            color: #333;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
        }

        .auth-section {
            background-color: rgba(0, 123, 255, 0.5);
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            margin-top: 20px;
            width: 80%;
            max-width: 500px;
        }

        h1, h2 {
            color: #007BFF;
            margin: 0 0 10px;
        }

        p {
            margin: 10px 0;
            font-size: 18px;
            color: #000;
        }

        .highlight-section {
            background-color: rgba(0, 123, 255, 0.5);
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            margin-top: 30px;
            width: 80%;
            max-width: 500px;
        }

        .highlight-section p {
            font-size: 18px;
            color: #000;
            font-weight: bold;
            margin-bottom: 15px;
        }

        button {
            padding: 12px 20px;
            background-color: #28a745;
            color: #fff;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>
    <div class="auth-section">
        <h2>¡Autenticación Satisfactoria!</h2>
        <p>Bienvenido, has iniciado sesión correctamente.</p>
    </div>

    <div class="highlight-section">
        <h1>Datos de Máquinas</h1>
        <p>Para ver los datos de las máquinas cargadas, haga clic en el siguiente botón:</p>
        <form action="SvUsuario" method="GET">
            <button type="submit">Mostrar Máquinas</button>
        </form>
    </div>
</body>
</html>


