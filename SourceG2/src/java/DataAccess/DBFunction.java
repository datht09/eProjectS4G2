/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package DataAccess;

import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Think Different
 */
public class DBFunction {
  
    
    
    
    private static Connection getConnection(){
       
    Connection con=null;
    
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String user="datht0404_SQLLogin_1";
            String pass="d1xwj48l2a";
            String sql="jdbc:sqlserver://dathtFIS.mssql.somee.com;databaseName=dathtFIS";
            con=DriverManager.getConnection(sql,user,pass );
          
            
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DBFunction.class.getName()).log(Level.SEVERE, null, ex);
        }
    return con;
    }
    
}
