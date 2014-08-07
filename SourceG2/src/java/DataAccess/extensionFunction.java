/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DataAccess;

import Entity.QueryAdmin;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author Minh Hung
 */
public class extensionFunction {

    public static void main(String[] args) {
        
    }
    
    public void extensionOfTime(String time, int queryId){
        DBFunction db = new DBFunction();
        String sqlUpdate = "update tbl_Query set _dateofclosing = '"+time+"' where _id = " + queryId;
        
        try {
            PreparedStatement pre = db.getConnection().prepareStatement(sqlUpdate);
            pre.executeUpdate();
            pre.close();
        } catch (SQLException ex) {

        }
    }
    
    public void autoCancel(){
        DBFunction db = new DBFunction();
        String sql = "select * from tbl_Query where _dateofclosing < GETDATE()";
        try {
            PreparedStatement pre = db.getConnection().prepareStatement(sql);
            ResultSet rs = pre.executeQuery();
            while(rs.next()){
                String sqlUpdate = "update tbl_Query set _status = 4 where _id = " + rs.getInt("_id");
                PreparedStatement pre2 = db.getConnection().prepareStatement(sqlUpdate);
                pre2.executeUpdate();
            }
            pre.close();
        } catch (SQLException ex) {

        }
    }

}
