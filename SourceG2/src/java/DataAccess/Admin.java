/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DataAccess;

import Entity.Account;
import Entity.QueryAdmin;
import Entity.QueryCategory;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 *
 * @author Think Different
 */
public class Admin {

    public List<QueryCategory> getListCategory() {
        String sql = "select * from tbl_QueryCategory";
        List<QueryCategory> lst = new ArrayList<>();
        try {

            PreparedStatement preparedStatement = getConnection().prepareStatement(sql);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                QueryCategory category = new QueryCategory();
                category.setId(rs.getString("_id"));
                category.setName(rs.getString("_name"));
                category.setDes(rs.getString("_des"));
                lst.add(category);
            }
            preparedStatement.close();

        } catch (SQLException ex) {
            
        }

        return lst;
    }

    public List<QueryCategory> getListDepartment() {
        String sql = "select * from tbl_Department";
        List<QueryCategory> lst = new ArrayList<>();
        try {

            PreparedStatement preparedStatement = getConnection().prepareStatement(sql);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                QueryCategory category = new QueryCategory();
                category.setId(rs.getString("_id"));
                category.setName(rs.getString("_name"));
                category.setDes(rs.getString("_des"));
                lst.add(category);
            }
            preparedStatement.close();

        } catch (SQLException ex) {
            
        }

        return lst;
    }

    public ArrayList<QueryAdmin> getQueries(int i, Map pram, String start, String end) {
        ArrayList<QueryAdmin> arr = new ArrayList<>();
        String[] category=null;
         String[] department=null;
        if(pram!=null){
        category = (String[]) pram.get("category");
      department = (String[]) pram.get("department");
        }
        String sql = "";
        if (i == 100) {
            sql = "select * from tbl_Query";
            if (category != null && department == null) {
                sql = sql + " where _category like '" + category[0] + "'";
                for (String cate : category) {
                    sql = sql + " or _category like '" + cate + "'";
                }
            } else {
                if (category == null && department != null) {
                    sql = sql + " where _departmentID like '" + department[0] + "'";
                    for (String de : department) {
                        sql = sql + " or _departmentID like '" + de + "'";
                    }
                }else{
                    if(category!=null&&department!=null){
                     sql = sql + " where _departmentID like '" + department[0] + "'";
                    for (String de : department) {
                        sql = sql + " or _departmentID like '" + de + "'";
                    }
                    String[] temp=sql.split(" or ");
                    System.out.println("sql1: "+sql);
                        
                    sql="";
                  
                        String ss="";
                        int k=0;
                        for(int j = 0;j<temp.length;j++){
                           
                            if(j==0){
                            ss=ss+ temp[j]+" and _category like '"+category[k]+"' or ";
                            }
                            else{
                              for(k=0;k<category.length;k++){
                          
                            ss=ss+ temp[j]+" and _category like '"+category[k]+"' or ";
                            
                            
                              }
                            }
                             
                        }
                         sql=ss;
                        sql= sql.substring(0,sql.length()-3);
                    
                        System.out.println("sql2: "+sql);
                    }
                }

            }
        } else {
            sql = "select * from tbl_Query where _status=" + i;

            if (category != null && department == null) {
                sql = sql + " and _category like '" + category[0] + "'";
                for (String cate : category) {
                    sql = sql + " or _category like '" + cate + "'" + "and _status=" + i;
                }
            } else {
                if (category == null && department != null) {
                    sql = sql + " and _departmentID like '" + department[0] + "'";
                    for (String de : department) {
                        sql = sql + " or _departmentID like '" + de + "'"+ " and _status=" + i;
                    }
                }else{
                    if(category!=null&&department!=null){
                     sql = sql + " and _departmentID like '" + department[0] + "'";
                    for (String de : department) {
                        sql = sql + " or _departmentID like '" + de + "'";
                    }
                    String[] temp=sql.split(" or ");
                    System.out.println("sql1: "+sql);
                        
                    sql="";
                  
                        String ss="";
                        int k=0;
                        for(int j = 0;j<temp.length;j++){
                           
                            if(j==0){
                            ss=ss+ temp[j]+" and _category like '"+category[k]+"' or ";
                            }
                            else{
                              for(k=0;k<category.length;k++){
                          
                            ss=ss+ temp[j]+" and _category like '"+category[k]+"' and _status=" + i+" or ";
                            
                            
                              }
                            }
                             
                        }
                         sql=ss;
                        sql= sql.substring(0,sql.length()-3);
                    
                        System.out.println("sql2: "+sql);
                    }
                }
            }
        }

        try {
            PreparedStatement pre = getConnection().prepareStatement(sql);
            ResultSet rs = pre.executeQuery();
            while (rs.next()) {
                QueryAdmin query = new QueryAdmin();
                query.setId(rs.getString("_id"));
                query.setSubject(rs.getString("_subject"));
                query.setContent(rs.getString("_content"));
                query.setStatus(AutoGenerate.getStatusComplaint(rs.getInt("_status")));
                query.setDatelod(rs.getDate("_dateoflodging").toString());
                query.setDateclose(rs.getDate("_dateofclosing").toString());
                query.setDepart(getDepartmentName(rs.getString("_departmentID")));
                query.setCategory(AutoGenerate.getCategoryName(rs.getString("_category")));
                query.setUser(rs.getString("_username"));
                arr.add(query);
            }
            pre.close();
        } catch (SQLException ex) {
          
        }
        return arr;
    }

    public Account getAccDetails(String user, int role) {
        Account acc = null;
        String sql = "select * from tbl_AccountInfo where _username=?";

        try {

            PreparedStatement preparedStatement = getConnection().prepareStatement(sql);
            preparedStatement.setString(1, user);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                acc = new Account();
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
            
        }

        return acc;
    }

    private String getDepartmentName(String id) {

        String result = "";
        String sql = "select * from tbl_Department where _id=?";

        try {
            PreparedStatement preparedStatement = getConnection().prepareStatement(sql);
            preparedStatement.setString(1, id);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                result = rs.getString("_name");

            }
            preparedStatement.close();
        } catch (SQLException ex) {
           
        }

        return result;
    }

    public int getTotal(int i) {
        String sql = "";
        if (i == 100) {
            sql = "select count(*) as 'connut' from tbl_Query";
        } else {
            sql = "select count(*) as 'connut' from tbl_Query where _status=" + i;
        }
        try {
            PreparedStatement pre = getConnection().prepareStatement(sql);
            ResultSet rs = pre.executeQuery();
            while (rs.next()) {
                i = rs.getInt("connut");
            }
            pre.close();
        } catch (SQLException ex) {
            
        }

        return i;
    }

    public int getNewTotal(int i) {
        String sql = "";
        if (i == 100) {
            sql = "select count(*) as 'connut' from tbl_Query where  CONVERT(VARCHAR(10),_dateoflodging,110) like CONVERT(VARCHAR(10),GETDATE(),110)";
        } else {
            sql = "select count(*) as 'connut' from tbl_Query where _status=" + i + " and CONVERT(VARCHAR(10),_dateoflodging,110) like CONVERT(VARCHAR(10),GETDATE(),110)";
        }
        try {
            PreparedStatement pre = getConnection().prepareStatement(sql);
            ResultSet rs = pre.executeQuery();
            while (rs.next()) {
                i = rs.getInt("connut");
            }
            pre.close();
        } catch (SQLException ex) {
         
        }

        return i;
    }

    private Connection getConnection() {
        Connection con = null;

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String user = "sa";
            String pass = "123456";
            String sql = "jdbc:sqlserver://localhost:1433;databaseName=FIS";
            con = DriverManager.getConnection(sql, user, pass);
        } catch (SQLException | ClassNotFoundException ex) {
         
        }
        return con;
    }
}
