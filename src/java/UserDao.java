package myPackage;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDao {
            public static String registerUser(String name,String email){
                String query = ("select *" + "from admin where EMAIL = ?");
                try{
                     Class.forName("com.mysql.jdbc.Driver");
                     Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/quiz","root", "root");
                     PreparedStatement ps=con.prepareStatement(query);
                     ps.setString(1,email);
                     ResultSet rs=ps.executeQuery();
			if(rs.next()){
				return "registered";
			}
                        
                    query = "insert into " + " user(NAME,EMAIL)" + " values(?,?)";
                    ps=con.prepareStatement(query);
			ps.setString(1,name);
			ps.setString(2,email);
			
			int result=ps.executeUpdate();
			
			ps.close();
			con.close();
			
			if(result>0){
				return "true";
			}
                }
                catch(Exception e){
                    e.printStackTrace();
                }
                return "false";
    }
}
