
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User my account</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
             integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
        <link rel="stylesheet" href="../styles/styles.css"/>
    </head>
    <body>
        <%@include file="./partials/navbar.jsp" %>
        <main class="container-user" >
            
            <div class="container-user-div">
                
            <h2>Informacion de Ingreso : </h2>
                           <%
                login = (boolean) session.getAttribute("login");
                if (login) {
                %>
                    <h3 class="text-success my-0">Acceso permitido</h3>
                    <h2>Bienvenido</h2>
                <%
                }
                else {
                %>
                    <h3 class="text-danger my-0">Acceso denegado</h3>
                <%
                } 
                %>
                <a href="/ejemploWeb"><button class="sigin-btn">Home</button></a>
            </div>
        </main>
        <%@include file="./partials/footer.jsp" %>
    </body>
</html>