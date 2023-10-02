package modeloL;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class conexionlogin {
    Connection con;
     
    
    public conexionlogin(){
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost/registro", "root", "");
            
        }catch (ClassNotFoundException | SQLException e){
        }
    }

    public Connection getConnection(){
        return con;
    }

}