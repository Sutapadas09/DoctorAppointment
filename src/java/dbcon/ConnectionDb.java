/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dbcon;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Sutapa
 */
public class ConnectionDb {
   
         public static Connection getConnection(){
            Connection con = null;
            try{
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3307/doctorappointment", "root", "");
                System.out.println("con");
            }catch(Exception e){
                System.out.println(e.getMessage());    
            }
            return con;
    }
    
}
