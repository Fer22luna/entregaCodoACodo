
package controller;

import database.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Usuario;


@WebServlet(name = "userController", urlPatterns = {"/user/*"})
public class userController extends HttpServlet {

  
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            String action = request.getPathInfo(); 
            HttpSession session = request.getSession(); // aca se genera la sesion
            
            UserDAO udao = new UserDAO();
            Usuario actualUser;
            String userName;
            String password;
            String firstName;
            String lastName;
            String email;
            int regs_afectados; // registros afectados
            //String proyecto = "index";
            
            switch(action){
                
                case "/loginUser":
                    
                    userName = request.getParameter("userName");
                    password = request.getParameter("password");
                    
                    boolean existeUsuario = udao.login(userName, password);
                    
                    
                    if(existeUsuario){
                        
                        session.setAttribute("userName", userName);
                        actualUser = udao.getUserByUsername(userName);
                        session.setAttribute("actualUser", actualUser);
                    }
                    
                    session.setAttribute("login", existeUsuario);
                    response.sendRedirect("/ejemploWeb/views/user.jsp");
                    
                    break;
                    
                case "/logoutUser":
                    
                    session.setAttribute("login", false);
                    response.sendRedirect("/ejemploWeb");
                    break;
                    
                case "/createUser":
                    
                    regs_afectados = 2; 
                    userName = request.getParameter("userName");
                    
                   
                    if(udao.getUserByUsername(userName) == null){
                        
                        password = request.getParameter("password");
                        firstName = request.getParameter("firstName");
                        lastName = request.getParameter("lastName");
                        email = request.getParameter("email");
                        
                        actualUser = new Usuario(userName, password, firstName, lastName, email);
                        regs_afectados = udao.createUser(actualUser);
                    }
                    
                    session.setAttribute("estadoRegistro", regs_afectados);
                    response.sendRedirect("/ejemploWeb/views/userCreate.jsp");
                    break;
                   
                case "/viewUser":
                    
                    response.sendRedirect("/ejemploWeb/views/account.jsp");
                    break;
                    
                case "/updateUser":
                    
                    userName = (String)session.getAttribute("userName");
                    password = request.getParameter("password");
                    firstName = request.getParameter("firstName");
                    lastName = request.getParameter("lastName");
                    email = request.getParameter("email");
                    
                    actualUser = new Usuario(userName, password, firstName, lastName, email);
                    regs_afectados = udao.updateUser(actualUser);
                    session.setAttribute("actualUser", actualUser);
                    
                    response.sendRedirect("/ejemploWeb/views/account.jsp");
                    break;
                    
                case "/deleteUser":
                    
                    userName = (String) session.getAttribute("userName");
                    
                    regs_afectados = udao.deleteUser(userName);
                    session.setAttribute("login", false);
                    session.setAttribute("actualUser", null);
                    response.sendRedirect("/ejemploWeb");
                    break;                    
                
            }
            
        }
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(userController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(userController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}

    