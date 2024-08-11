<%-- 
    Document   : mostrarMaquinas
    Created on : 10/08/2024, 10:28:30 p. m.
    Author     : Agarc
--%>

<%@page import="java.util.List"%>
<%@page import="Maquinas.Maquinas"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mostrar Máquinas - MyMachine</title>
        <style>
            body {
                background-image: url('${pageContext.request.contextPath}/background.jpg');
                background-size: cover;
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

            .container {
                width: 70%;
                margin: 20px auto;
                padding: 20px;
                background-color: rgba(255, 255, 255, 0.8);
                border-radius: 10px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            }

            .maquina {
                margin-bottom: 20px;
                padding: 10px;
                border-bottom: 1px solid #ccc;
                display: flex;
                justify-content: space-between;
                align-items: center;
            }

            .maquina img {
                width: 150px; /* Tamaño mediano */
                height: auto;
                margin-left: 20px;
            }

            .maquina-info {
                flex: 1;
            }

            .maquina-info p {
                margin: 5px 0;
            }

            .maquina-title {
                font-weight: bold;
                color: #333;
            }

            .separator {
                border-bottom: 2px dashed #007BFF;
                margin: 15px 0;
            }

            .support {
                text-align: center;
                margin-top: 40px;
                padding: 20px;
                background-color: rgba(0, 123, 255, 0.9);
                border-radius: 10px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
                color: white;
            }

            .support h2 {
                color: #ffffff;
                margin-bottom: 10px;
                font-size: 24px;
            }

            .support p {
                margin: 5px 0;
                color: #ffffff;
                font-size: 18px;
            }

            .support a {
                color: #FFD700; /* Amarillo dorado para resaltar el enlace */
                text-decoration: none;
                font-weight: bold;
            }

            .support a:hover {
                text-decoration: underline;
            }
        </style>
    </head>
    <body>
        <h1>Lista de Máquinas Registradas</h1>
        <div class="container">
            <%
                List<Maquinas> listaMaquinas = (List) request.getSession().getAttribute("listaMaquinas");
                int cont = 1;
                for (Maquinas maqui : listaMaquinas) {
                    String imageName = maqui.getNombre_maquina().toLowerCase().replace(" ", "_") + ".jpg";
            %>
                    <div class="maquina">
                        <div class="maquina-info">
                            <p class="maquina-title">Máquina N°<%= cont %></p>
                            <p><b>Nombre de la máquina:</b> <%= maqui.getNombre_maquina() %></p>
                            <p><b>Componente:</b> <%= maqui.getComponente() %></p>
                            <p><b>Mantenimiento:</b> <%= maqui.getMantenimiento() %></p>
                            <p><b>Usuario:</b> <%= maqui.getUsuario() %></p>
                        </div>
                        <img src="${pageContext.request.contextPath}/images/maquinas/<%= imageName %>" alt="Imagen de <%= maqui.getNombre_maquina() %>">
                    </div>
                    <div class="separator"></div>
                    <%
                        cont++;
                    %>
            <% } %>
        </div>

        <div class="support">
            <h2>Soporte Técnico - MyMachine</h2>
            <p>¿Necesitas ayuda con tus máquinas? Estamos aquí para asistirte.</p>
            <p>Contacta a nuestro equipo de soporte en <a href="mailto:soporte@mymachine.com">soporte@mymachine.com</a> o llama al <strong>1-800-123-4567</strong>.</p>
            <p>Horario de atención: Lunes a Viernes, de 9:00 AM a 6:00 PM.</p>
        </div>
    </body>
</html>

