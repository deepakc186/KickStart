package myPackage;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Scanner;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

public class AdminDao {
              public static String login(String email,String password){          
          String query=("select *" + "from admin where EMAIL = ?  AND PASSWORD = ?");
		try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/quiz","root", "root");
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, email); 
            ps.setString(2, password); 
                ResultSet rs=ps.executeQuery();	
			if(rs.next()){
                            return "true";
			}
            con.close();
            }catch(Exception e){
                e.printStackTrace();            
            }
            return "false";
            }
              
            public static JSONArray getQuestions(String set){
            JSONArray array=new JSONArray();
            JSONObject obj;
            String query=("select *" + "from question where Q_SET = ?");
            
            try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/quiz","root", "root");
            PreparedStatement ps = con.prepareStatement(query);
            
            ps.setString(1, set); 
            ResultSet rs=ps.executeQuery();			
	    ResultSet rs1=null;
            while(rs.next()){
		obj=new JSONObject();
                obj.put("id", rs.getString("ID"));
                obj.put("question", rs.getString("TEXT"));
		obj.put("answer", rs.getString("ANSWER"));
                
                query=("select *" + " from choice where Q_ID = ?");
                ps=con.prepareStatement(query);
                ps.setString(1,rs.getString("ID"));
                rs1=ps.executeQuery();
                
                rs1.absolute(1);
                obj.put("a", rs1.getString("TEXT"));
				
                rs1.absolute(2);
		obj.put("b", rs1.getString("TEXT"));
				
                rs1.absolute(3);
		obj.put("c", rs1.getString("TEXT"));
				
		rs1.absolute(4);
                obj.put("d", rs1.getString("TEXT"));
				
				array.add(obj);
            }rs.close();
            rs1.close();
            ps.close();
            con.close();
            }catch(Exception e){
		e.printStackTrace();
            }
		return array;
            }  
}
