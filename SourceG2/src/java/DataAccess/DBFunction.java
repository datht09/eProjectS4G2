/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DataAccess;

import Entity.Account;
import Entity.Query;
import Entity.QueryCategory;
import Entity.Reply;
import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Think Different
 */
public class DBFunction {

    ArrayList<String> arr = new ArrayList<>();

    public DBFunction() {
    }

    //getDepartment Name
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
            Logger.getLogger(DBFunction.class.getName()).log(Level.SEVERE, null, ex);
        }

        return result;
    }

    //get user's department
    private String getDepartmentOfUser(String user) {

        String result = "";
        String sql = "select * from tbl_AccountInfo where _username=?";

        try {
            PreparedStatement preparedStatement = getConnection().prepareStatement(sql);
            preparedStatement.setString(1, user);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                result = rs.getString("_departmentID");

            }
            preparedStatement.close();
        } catch (SQLException ex) {
            Logger.getLogger(DBFunction.class.getName()).log(Level.SEVERE, null, ex);
        }

        return result;
    }

    //get Account details
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
            Logger.getLogger(DBFunction.class.getName()).log(Level.SEVERE, null, ex);
        }

        return acc;
    }

    //get Account details
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
            Logger.getLogger(DBFunction.class.getName()).log(Level.SEVERE, null, ex);
        }

        return lst;
    }

    //insert query
    public boolean insertQuery(String username, String category, String subject, String content) {
        int result = 0;
        try {

            Connection conn = getConnection();
            String sql = "insert into tbl_Query values(?,?,?,?,?,?,?,?)";
            PreparedStatement prst = conn.prepareStatement(sql);
            prst.setString(1, username);
            prst.setString(2, getDepartmentOfUser(username));
            prst.setString(3, category);
            prst.setString(4, subject);
            prst.setString(5, content);
            DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
            Date datenow = new Date();
            Calendar c = Calendar.getInstance();
            c.setTime(datenow);
            c.add(Calendar.DATE, 7);  // number of days to add
            String dateEnd = dateFormat.format(c.getTime());
            prst.setString(6, dateFormat.format(datenow));
            prst.setString(7, dateEnd);
            prst.setInt(8, 0);
            result = prst.executeUpdate();
            prst.close();
            conn.close();

        } catch (SQLException ex) {
            Logger.getLogger(DBFunction.class.getName()).log(Level.SEVERE, null, ex);
        }
        return result > 0;
    }

    //insert reply
    public boolean insertReply(int queryid, String username, String content) {
        int result = 0;
        try {

            Connection conn = getConnection();
            String sql = "insert into tbl_Reply(_queryID, _username, _content) values(?,?,?)";
            PreparedStatement prst = conn.prepareStatement(sql);
            prst.setInt(1, queryid);
            prst.setString(2, username);
            prst.setString(3, content);
            result = prst.executeUpdate();
            prst.close();
            conn.close();

        } catch (SQLException ex) {
            Logger.getLogger(DBFunction.class.getName()).log(Level.SEVERE, null, ex);
        }
        return result > 0;
    }

    //login
    public Boolean checkLogin(String username, String password, int role) {
        Boolean result = false;
        String sql = "select * from tbl_Account where _username=? and _password=? and _role=?";

        try {
            PreparedStatement preparedStatement = getConnection().prepareStatement(sql);
            preparedStatement.setString(1, username);
            preparedStatement.setString(2, password);
            preparedStatement.setInt(3, role);
            ResultSet rs = preparedStatement.executeQuery();
            result = rs.next();
            preparedStatement.close();

        } catch (SQLException ex) {
            Logger.getLogger(DBFunction.class.getName()).log(Level.SEVERE, null, ex);
        }
        return result;
    }

    //get Connection Host Online
    public Connection getConnection() {

        Connection con = null;
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String user = "sa";
            String pass = "123456";
            String sql = "jdbc:sqlserver://localhost:1433;databaseName=FIS";
            con = DriverManager.getConnection(sql, user, pass);
        } catch (SQLException ex) {
            Logger.getLogger(DBFunction.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DBFunction.class.getName()).log(Level.SEVERE, null, ex);
        }
        return con;
    }

    public List<Query> getListQuery(String username) {
        String sql ="select * from tbl_Query where _username like ? order by _id asc";
      
        List<Query> lst = new ArrayList<>();
        try {

            PreparedStatement preparedStatement = getConnection().prepareStatement(sql);
            preparedStatement.setString(1, username);
            
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                Query query = new Query();
                query.setId(rs.getInt("_id"));
                query.setCategory(AutoGenerate.getCategoryName(rs.getString("_category")));
                query.setUsername(rs.getString("_username"));
                query.setDepartmentID(getDepartmentName(rs.getString("_departmentID")));
                query.setSubject(rs.getString("_subject"));
                query.setContent(rs.getString("_content"));
                query.setDateOfLodging(rs.getDate("_dateoflodging").toString());
                query.setDateOfClosing(rs.getDate("_dateofclosing").toString());
                query.setStatus(AutoGenerate.getStatusComplaint(rs.getInt("_status")));
                lst.add(query);
            }
            preparedStatement.close();

        } catch (SQLException ex) {
            Logger.getLogger(DBFunction.class.getName()).log(Level.SEVERE, null, ex);
        }

        return lst;

    }

    public int countQueryByUser(String username) {
        String sql = "select * from tbl_Query where _username =?";
        List<Query> lst = new ArrayList<>();
        try {

            PreparedStatement preparedStatement = getConnection().prepareStatement(sql);
            preparedStatement.setString(1, username);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                Query query = new Query();
                query.setId(rs.getInt("_id"));
                query.setCategory(AutoGenerate.getCategoryName(rs.getString("_category")));
                query.setUsername(rs.getString("_username"));
                query.setDepartmentID(getDepartmentName(rs.getString("_departmentID")));
                query.setSubject(rs.getString("_subject"));
                query.setContent(rs.getString("_content"));
                query.setDateOfLodging(rs.getDate("_dateoflodging").toString());
                query.setDateOfClosing(rs.getDate("_dateofclosing").toString());
                query.setStatus(AutoGenerate.getStatusComplaint(rs.getInt("_status")));
                lst.add(query);
            }
            preparedStatement.close();

        } catch (SQLException ex) {
            Logger.getLogger(DBFunction.class.getName()).log(Level.SEVERE, null, ex);
        }

        return lst.size();
    }

    public int countPage(int i) {
        int count;
        if (i % 7 == 0) {
            count = i / 7;
        } else {
            count = (i /7) + 1;
        }
        return count;
    }
    
    public Query getQueryById(int id) {
        String sql = "SELECT *  FROM tbl_Query WHERE _id=?";
        Query query = new Query();
        try {
           
            PreparedStatement preparedStatement = getConnection().prepareStatement(sql);
            preparedStatement.setInt(1, id);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                query.setId(rs.getInt("_id"));
                query.setCategory(AutoGenerate.getCategoryName(rs.getString("_category")));
                query.setUsername(rs.getString("_username"));
                query.setDepartmentID(getDepartmentName(rs.getString("_departmentID")));
                query.setSubject(rs.getString("_subject"));
                query.setContent(rs.getString("_content"));
                query.setDateOfLodging(rs.getString("_dateoflodging"));
                query.setDateOfClosing(rs.getString("_dateofclosing"));
                query.setStatus(AutoGenerate.getStatusComplaint(rs.getInt("_status")));
            }
            preparedStatement.close();

        } catch (SQLException ex) {
            Logger.getLogger(DBFunction.class.getName()).log(Level.SEVERE, null, ex);
        }

        return query;

    }


    public List<Reply> getListReply(int queryid) {
        String sql = "select * from tbl_Reply where _queryID =?";
        List<Reply> lst = new ArrayList<>();
        try {

            PreparedStatement preparedStatement = getConnection().prepareStatement(sql);
            preparedStatement.setInt(1, queryid);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                Reply reply = new Reply();
                reply.setId(rs.getInt("_id"));
                reply.setQueryid(rs.getInt("_queryID"));
                reply.setUsername(rs.getString("_username"));
                reply.setContent(rs.getString("_content"));
                reply.setDate(rs.getString("_date"));
                lst.add(reply);
            }
            preparedStatement.close();

        } catch (SQLException ex) {
            Logger.getLogger(DBFunction.class.getName()).log(Level.SEVERE, null, ex);
        }

        return lst;

    }

}
