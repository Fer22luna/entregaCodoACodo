
<%
    boolean login ;
    
    if(session.isNew()){
        session.setAttribute("login", false);
        
    }
    
    login = (boolean)session.getAttribute("login");
    

    %>

  <header>
    <nav class="navbar navbar-expand-lg bg-dark ">
      <div class="container-fluid align-items-center">
        <a class="navbar-brand ms-5" href="/ejemploWeb">
          <img src="/ejemploWeb/img/codoacodo.png" alt="Logo" width="auto" height="65" class="d-inline-block align-text-top">
        </a>
        <a class="nav-link text-light fs-4 " href="#">Conf Bs As</a>
        <div class="collapse navbar-collapse justify-content-end me-5 " >
          <div class="navbar-nav">
            <a class="nav-link text-light" href="#">La conferencia</a>
            <a class="nav-link text-secondary" href="#">Los oradores</a>
            <a class="nav-link text-secondary" href="#">El lugar y la fecha</a>
            <a class="nav-link text-success d-<%= !login?"initial":"none" %>" href="/ejemploWeb/views/login.jsp">SIGN IN</a>
            <a class="nav-link text-success d-<%= !login?"initial":"none" %>" href="/ejemploWeb/views/register.jsp">SING UP</a>  
            <a class="nav-link text-success d-<%= login?"initial":"none" %>" href="/ejemploWeb/views/account.jsp">My account</a>
            <a class="nav-link text-success d-<%= login?"initial":"none" %>" href="/ejemploWeb/user/logoutUser">Logout</a>
          </div>
        </div>
      </div>
    </nav>
  </header>