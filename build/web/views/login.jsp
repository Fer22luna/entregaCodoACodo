

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Proyecto Final CaC</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
             integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">        
        <link rel="stylesheet" href="../styles/styles.css"/>
    </head>
    <body>
        <%@include file="./partials/navbar.jsp" %>
        <main class="form-container-login">
            <form class="form" method="POST" action="/ejemploWeb/user/loginUser">
            <div class="header">Sign In</div>
            <div class="inputs">
                <input placeholder="Username" name="userName" class="input" type="text">
                <input placeholder="Password" name ="password" class="input" type="password">
                <button class="sigin-btn" type="submit">Submit</button>
                <p class="signup-link">Don't have an account? <a href="/ejemploWeb/views/register.jsp">Sign up</a></p>
            </div>
        </form>
        </main>     
        <%@include file="./partials/footer.jsp" %>
    </body>
</html>
