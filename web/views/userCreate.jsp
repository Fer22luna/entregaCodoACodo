

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
             integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
        <link rel="stylesheet" href="../styles/styles.css"/>
    </head>
    <body>
        <%@include file="./partials/navbar.jsp" %>
        <main class="container-user">
            
            <div class="container-user-div">
            
                <h2 class="mb-3">Informacion de registro:</h2>

                <%
                    
                int estadoRegistro = (int) session.getAttribute("estadoRegistro");
                switch (estadoRegistro) {
                    case 1:
                        out.print("<h3 class='text-success'>¡Registro exitoso!</h3>");
                        break;

                    case 2:
                        out.print("<h3 class='text-danger'>¡El usuario ya existe!</h3>");
                        break;

                    default:
                        out.print("<h3 class='text-danger'>¡Registro fallido!</h3>");
                        break;
                }
                %>

                <a href="/ejemploWeb" ><button class="sigin-btn">Home</button></a>
                
            </div>            
        </main>
        <%@include file="./partials/footer.jsp" %>        
    </body>
</html>
