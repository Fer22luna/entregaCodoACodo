
<%@page import="model.Usuario"%>
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
      
   
            <%
    if (!(boolean)session.getAttribute("login")){
        response.sendRedirect("/ejemploWeb");
    }

    Usuario actualUser = (Usuario) session.getAttribute("actualUser");
    String userName = actualUser.getUserName();
    String password = actualUser.getPassword();
    String firstName = actualUser.getFirstName();
    String lastName = actualUser.getLastName();
    String email = actualUser.getEmail();
    
%>


    <main class="main-container-update ">
        <div class="div-container-update">        
            <form method="POST" action="/ejemploWeb/user/updateUser" class="form-update" >    
                    <h2 class="text-center my-2">My account</h2> 
                    <div class="input-update">
                        <label for="userName" class="formlabel">Usuario:</label>
                        <input type="text" id="username" name="userName" class="input" value="<%= userName%>" disabled>
                    </div>

                    <div class="input-update">
                        <label for="password" class="formlabel">Clave:</label>
                        <input type="password" id="password" name="password" class="input" value="<%= password%>" >
                    </div>

                    <div class="input-update">
                        <label for="name" class="formlabel">Nombre:</label>
                        <input type="text" id="name" name="firstName" class="input" value="<%= firstName%>" >
                    </div>

                    <div class="input-update">
                        <label for="last_name" class="formlabel">Apellido:</label>
                        <input type="text" id="last_name" name="lastName" class="input" value="<%= lastName%>" >
                    </div>

                    <div class="input-update">
                        <label for="email" class="formlabel">Email:</label>
                        <input type="email" id="email" name="email"  class="input" value="<%= email%>" >
                    </div>
                    <div class="buttons mb-5">
                        <button class="btn btn-success" type="submit">Update</button>
                        <a href="/ejemploWeb/user/deleteUser" class="btn btn-danger">Delete</a>
                        <a href="/ejemploWeb" class="btn btn-secondary">Home</a>
                    </div>      
                </form>
            </div>
        </main>
        <%@include file="./partials/footer.jsp" %>
    </body>
</html>
