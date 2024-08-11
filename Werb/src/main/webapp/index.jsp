<%-- 
    Document   : index
    Created on : 10/08/2024, 8:41:26 p. m.
    Author     : Agarc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Usuario - MyMachine</title>
        <style>
            body {
                background-image: url('${pageContext.request.contextPath}/UI.png');
                background-size: cover;
                background-repeat: no-repeat;
                background-attachment: fixed;
                font-family: Arial, sans-serif;
                color: #333;
                margin: 0;
                padding: 0;
            }

            h1 {
                color: #007BFF;
                text-align: center;
                margin-top: 20px;
            }

            form {
                width: 50%;
                margin: 20px auto;
                padding: 20px;
                background-color: #fff;
                border-radius: 10px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            }

            p {
                margin: 10px 0;
            }

            label {
                font-weight: bold;
            }

            input[type="text"] {
                width: calc(100% - 20px);
                padding: 10px;
                margin-top: 5px;
                border: 1px solid #ccc;
                border-radius: 5px;
                font-size: 16px;
            }

            button {
                width: 100%;
                padding: 10px;
                background-color: #007BFF;
                color: #fff;
                border: none;
                border-radius: 5px;
                font-size: 18px;
                cursor: pointer;
                transition: background-color 0.3s ease;
            }

            button:hover {
                background-color: #0056b3;
            }

            .container {
                text-align: center;
                margin-top: 30px;
            }

            .image-container {
                text-align: center;
                margin-bottom: 20px;
            }

            .image-container img {
                max-width: 200px;
                border-radius: 10px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            }

            .highlight-section {
                background-color: rgba(0, 123, 255, 0.5);
                padding: 20px;
                border-radius: 10px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
                margin: 20px auto;
                width: 50%;
            }

            .highlight-section p {
                font-size: 20px;
                color: #000000;
                font-weight: bold;
            }

            .highlight-section button {
                width: auto;
                padding: 15px 25px;
                background-color: #28a745;
                font-size: 20px;
            }

            .highlight-section button:hover {
                background-color: #218838;
            }

        </style>
    </head>
    <body>
        <h1>Datos de Usuario</h1> 

        <div class="container">
            <div class="image-container">
                <img src="${pageContext.request.contextPath}/MyMachine.png" alt="MyMachine Logo"/>
            </div>

            <form action="SvUsuario" method="POST">
                <p>
                    <label for="cc">CC:</label>
                    <input type="text" id="cc" name="cc" placeholder="Ingrese su cédula">
                </p>
                <p>
                    <label for="nombre">Nombre:</label>
                    <input type="text" id="nombre" name="nombre" placeholder="Ingrese su nombre">
                </p>
                <p>
                    <label for="apellido">Apellido:</label>
                    <input type="text" id="apellido" name="apellido" placeholder="Ingrese su apellido">
                </p>
                <p>
                    <label for="telefono">Teléfono:</label>
                    <input type="text" id="telefono" name="telefono" placeholder="Ingrese su teléfono">
                </p>
                <button type="submit">Enviar</button>
            </form>
        </div>
        
        <h1>Datos de Máquinas</h1>
        <div class="highlight-section">
            <p>Para ver los datos de las máquinas cargadas, haga clic en el siguiente botón:</p>
            <form action="SvUsuario" method="GET">
                <button type="submit">Mostrar Máquinas</button>
            </form>
        </div>
    </body>
</html>


<head>
    <meta charset="UTF-8">
    <title>Iniciar Sesión</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            display: grid;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .login-container {
            background-color: #ffffff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            max-width: 400px;
            width: 100%;
        }
        h2 {
            color: #007BFF;
            text-align: center;
            margin-bottom: 20px;
            font-size: 24px;
        }
        label {
            font-weight: bold;
            color: #333333;
            display: block;
            margin-bottom: 5px;
        }
        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #dddddd;
            border-radius: 4px;
            box-sizing: border-box;
            font-size: 16px;
        }
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #007BFF;
            color: white;
            border: none;
            border-radius: 4px;
            font-size: 18px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <h2>Iniciar Sesión</h2>
        
        <form action="LoginServlet" method="post">
            <label for="username">Usuario:</label>
            <input type="text" id="username" name="username" required>
            
            <label for="password">Contraseña:</label>
            <input type="password" id="password" name="password" required>
            
            <input type="submit" value="Iniciar Sesión">
        </form>
    </div>
</body>
</html>


