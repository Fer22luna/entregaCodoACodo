
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
        <%  if((boolean)session.getAttribute("login"))
            {
            response.sendRedirect("/ejemploWeb/");
            }
            %>
        <main class="form-container-register">
            <form class="form" method="POST" action="/ejemploWeb/user/createUser">
                <!--<p class="title"> Register </p>-->
                <div class="header">Sign Up</div>
                <label>
                    <input required="" placeholder="" name="userName" type="text" class="input">
                    <span>Username</span>
                </label>
                <label>
                    <input required="" placeholder="" name="email"  type="email" class="input">
                    <span>Email</span>
                </label> 
                <label>
                    <input required="" placeholder="" name="firstName"  type="text" class="input">
                    <span>First name</span>
                </label>     
                <label>
                    <input required="" placeholder="" name="lastName"  type="text" class="input">
                    <span>Last name</span>
                </label> 
                <label>
                    <input required="" placeholder="" name="password" type="password" class="input">
                    <span>Password</span>
                </label>
                <button class="sigin-btn" type="submit">Submit</button>
                <p class="signin">Already have an acount ? <a href="/ejemploWeb/views/login.jsp">Signin</a> </p>
            </form>
        </main>
        <%@include file="./partials/footer.jsp" %>
    </body>
</html>
