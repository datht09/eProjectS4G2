/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package DataAccess;

import Entity.Account;
import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Think Different
 */
public class DBFunction {
  
    
    //getDeaprtment Name
    private static String getDepartmentName(String id){
        
        
        String result="";
         String sql="select * from tbl_Department where _id=?";
  
        try {
            PreparedStatement preparedStatement=getDathtConnection().prepareStatement(sql);
            preparedStatement.setString(1, id);
            ResultSet rs=preparedStatement.executeQuery();
            while (rs.next()) {
                result=rs.getString("_name");
                
            }
            preparedStatement.close();
        } catch (SQLException ex) {
            Logger.getLogger(DBFunction.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        return result;
    }
    //get Account details
    public  Account getAccDetails(String user,int role){
        Account acc=null;
        String sql="select * from tbl_AccountInfo where _username=?";
   
        
        try {
            
            PreparedStatement preparedStatement=getDathtConnection().prepareStatement(sql);
            preparedStatement.setString(1, user);
            ResultSet rs=preparedStatement.executeQuery();
            while (rs.next()) {
                acc=new Account();
                acc.setUsername(user);
                acc.setFullname(rs.getString("_fullname"));
                acc.setDepartmentid(getDepartmentName(rs.getString("_departmentID")));
                acc.setEmail(rs.getString("_email"));
                acc.setAddress(rs.getString("_address"));
                acc.setImageurl(rs.getString("_image"));
                acc.setRole(role);
                acc.setPhone(rs.getString("_phonenumber"));
                
            }
            preparedStatement.close();
            
            
        } catch (SQLException ex) {
            Logger.getLogger(DBFunction.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        return acc;
    }
    //login
    public static Boolean checkLogin(String username,String password,int role){
        Boolean result=false;
        String sql="select * from tbl_Account where _username=? and _password=? and _role=?";
   
        try {
            PreparedStatement preparedStatement=getDathtConnection().prepareStatement(sql);
            preparedStatement.setString(1, username);
            preparedStatement.setString(2, password);
            preparedStatement.setInt(3, role);
            ResultSet rs=preparedStatement.executeQuery();
            result=rs.next();
            preparedStatement.close();
            
        } catch (SQLException ex) {
            Logger.getLogger(DBFunction.class.getName()).log(Level.SEVERE, null, ex);
        }
    return result;
    }
    
    //get Connection Host Online
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
    //get Connection Host Local datht
    private static Connection getDathtConnection(){
       
    Connection con=null;
    
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String user="sa";
            String pass="123456";
            String sql="jdbc:sqlserver://localhost:1433;databaseName=FIS";
            con=DriverManager.getConnection(sql,user,pass );
          
            
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DBFunction.class.getName()).log(Level.SEVERE, null, ex);
        }
    return con;
    }
    
}
