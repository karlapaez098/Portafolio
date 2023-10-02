package modeloL;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class personaDAO  implements validar{
    Connection con;
    conexionlogin cn =new conexionlogin();
    PreparedStatement ps;
    ResultSet rs;
    int r=0;
    

    @Override
    public int validar(persona per) {
        String sql = "Select * from persona where nombres=? and correo=?";
        try{
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.setString(1, per.getnom());
            ps.setString(2, per.getcorreo());
            rs=ps.executeQuery();
            while(rs.next()){
                r=r+1;
                per.setnom(rs.getString("nombres"));
                per.setcorreo(rs.getString("correo"));
            }
            if(r==1){
                return 1;
            }else{
                return 0;
            }
            

           
        }catch (Exception e){
            return 0;
        }
    }
    
    
    
}
