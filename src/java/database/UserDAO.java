
package database;

import config.DBconnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Usuario;


public class UserDAO {
    
    
    public Connection connection;
    private String tabla = "users";
    
    public UserDAO(){
        DBconnection conn = new DBconnection();
        String DB = "codo";
        String userDB = "root";
        String passDB = "password";
        connection = conn.getConnection(DB, userDB, passDB);
    }
    
    public Usuario getUserByUsername(String userName) throws SQLException {
        PreparedStatement ps;
        ResultSet rs;
        Usuario u = null;

        ps = connection.prepareStatement("SELECT * FROM "+ tabla +" WHERE userName = ?");
        
        ps.setString(1, userName);

        rs = ps.executeQuery();

        if(rs.next()) {
            String password = rs.getString("password");
            String firstName = rs.getString("firstName");
            String lastName = rs.getString("lastName");
            String email = rs.getString("email");

            u = new Usuario(userName, password, firstName, lastName, email);
        }
        return u;
    }
    
    
        public int createUser(Usuario u) throws SQLException {
        PreparedStatement ps;
        int lineasAfectadas;
        
        String pQuery = "INSERT INTO "+tabla+" (userName, password, firstName, lastName, email)"
                + " VALUES(?, ?, ?, ?, ?);";
        ps = connection.prepareStatement(pQuery);
        
        
        ps.setString(1, u.getUserName());
        ps.setString(2, u.getPassword());
        ps.setString(3, u.getFirstName());
        ps.setString(4, u.getLastName());
        ps.setString(5, u.getEmail());
         
        lineasAfectadas = ps.executeUpdate();
        return lineasAfectadas;
    }
        
        public int updateUser(Usuario u) throws SQLException {
        PreparedStatement ps;
        int lineasAfectadas;
        
        String pQuery = "UPDATE "+tabla+" SET password = ?, firstName = ?, lastName = ?, email = ?"
                + " WHERE userName = ?;";
        ps = connection.prepareStatement(pQuery);
        
        
        ps.setString(1, u.getPassword());
        ps.setString(2, u.getFirstName());
        ps.setString(3, u.getLastName());
        ps.setString(4, u.getEmail());
        ps.setString(5, u.getUserName());
         
        lineasAfectadas = ps.executeUpdate();
        return lineasAfectadas;
    }
    
    public int deleteUser(String userName) throws SQLException {
        PreparedStatement ps;
        int lineasAfectadas;
        
        String pQuery = "DELETE FROM "+tabla+" WHERE userName = ?;";
        ps = connection.prepareStatement(pQuery);
        
        ps.setString(1, userName);
        
        lineasAfectadas = ps.executeUpdate();
        return lineasAfectadas;
    }
    
     public boolean login(String userInput, String passInput) throws SQLException {      
        PreparedStatement ps;
        ResultSet rs;
        String query = "SELECT userName, password FROM "+ tabla + " WHERE userName = ? AND password = ?";
        
        ps = connection.prepareStatement(query);
        
        ps.setString(1, userInput);
        ps.setString(2, passInput);
        rs = ps.executeQuery();
        return rs.next();
    }
    
        
 /*   public boolean getBorrable(String userName) throws SQLException {
        PreparedStatement ps;
        ResultSet rs;
        boolean borrable = false;

        ps = connection.prepareStatement("SELECT * FROM "+tabla+" WHERE userName = ?");
        ps.setString(1, userName);

        rs = ps.executeQuery();
        
        if(rs.next()) {
           borrable = rs.getBoolean("borrable");
        }
        
        return borrable;
    }*/
}
