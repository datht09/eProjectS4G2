/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DataAccess;

import Entity.Account;
import Entity.CustomDate;
import Entity.News;
import Entity.QueryCategory;
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
import java.text.DateFormatSymbols;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Think Different
 */
public class DBFunctionNews {

   

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
            Logger.getLogger(DBFunctionNews.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(DBFunctionNews.class.getName()).log(Level.SEVERE, null, ex);
        }

        return result;
    }
    ArrayList<String> arr = new ArrayList<>();

    private String getMonthForInt(int num) {
        String month = "wrong";
        DateFormatSymbols dfs = new DateFormatSymbols();
        String[] months = dfs.getMonths();
        if (num >= 0 && num <= 11 ) {
            month = months[num];
        }
        return month;
    }
    


   public Vector<News> getNews(String type, String content) {
        Vector<News> vectorNews = new Vector<>();
        String query = "";
        switch(type) {
            case "Top5": query = "SELECT TOP 5 * FROM tbl_Article LEFT JOIN "
                    + "(SELECT SUM(_rate)/COUNT(*) AS \"STAR\",_articleid "
                    + "FROM tbl_ArticleRate  GROUP BY tbl_ArticleRate._articleid) tbl_ArticleRate "
                    + "ON tbl_Article._id = tbl_ArticleRate._articleid ORDER BY _id DESC";
                break;
            case "All": query = "SELECT * FROM tbl_Article LEFT JOIN "
                    + "(SELECT SUM(_rate)/COUNT(*) AS \"STAR\",_articleid "
                    + "FROM tbl_ArticleRate  GROUP BY tbl_ArticleRate._articleid) tbl_ArticleRate "
                    + "ON tbl_Article._id = tbl_ArticleRate._articleid ORDER BY _id DESC";
                break;
            case "Date": query = "SELECT * FROM tbl_Article LEFT JOIN "
                    + "(SELECT SUM(_rate)/COUNT(*) AS \"STAR\",_articleid "
                    + "FROM tbl_ArticleRate  GROUP BY tbl_ArticleRate._articleid) tbl_ArticleRate "
                    + "ON tbl_Article._id = tbl_ArticleRate._articleid "
                    + "WHERE CONVERT(varchar(10),_dateofpost,102) LIKE '"+content+"%' ORDER BY _id DESC";
                break;
            default: query = "SELECT * FROM tbl_Article LEFT JOIN "
                    + "(SELECT SUM(_rate)/COUNT(*) AS \"STAR\",_articleid "
                    + "FROM tbl_ArticleRate  GROUP BY tbl_ArticleRate._articleid) tbl_ArticleRate "
                    + "ON tbl_Article._id = tbl_ArticleRate._articleid ORDER BY _id DESC";
                break;
        }
        try {
            ResultSet rs = getConnection().createStatement().executeQuery(query);
            while (rs.next())
            {
                News temp = new News(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getInt(8));
                 String[] ss=rs.getDate("_dateofpost").toString().split("-");
                CustomDate date=new CustomDate();
                date.setYear(ss[0]);
                date.setMonth(getMonthForInt(Integer.parseInt(ss[1])-1));
                date.setDate(ss[2]);
                temp.setcDate(date);
                System.out.println(""+date);
                vectorNews.add(temp);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DBFunctionNews.class.getName()).log(Level.SEVERE, null, ex);
        }
        return vectorNews;
    }
    
    //get news by id
    public News getNewsByID(int id) {
        News temp = null;
        String query = "SELECT * FROM tbl_Article LEFT JOIN "
                    + "(SELECT SUM(_rate)/COUNT(*) AS \"STAR\",_articleid "
                    + "FROM tbl_ArticleRate  GROUP BY tbl_ArticleRate._articleid) tbl_ArticleRate "
                    + "ON tbl_Article._id = tbl_ArticleRate._articleid "
                    + "WHERE _id = ? ORDER BY _id DESC";
        try {
            PreparedStatement ps = getConnection().prepareStatement(query);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while(rs.next())
            {
                temp = new News(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getInt(8));
                String[] ss=rs.getDate("_dateofpost").toString().split("-");
                CustomDate date=new CustomDate();
                date.setYear(ss[0]);
                date.setMonth(getMonthForInt(Integer.parseInt(ss[1])-1));
                date.setDate(ss[2]);
                temp.setcDate(date);
                System.out.println(""+date);
            }
            rs.close();
        } catch (SQLException ex) {
            Logger.getLogger(DBFunctionNews.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return temp;
    }
    
    //insert query
    public boolean addNews(String title, String content, String summary, String thumbnail, String username) {
        int result = 0;
        try {
            Connection conn = getConnection();
            String sql = "INSERT INTO tbl_Article (_title,_content,_summary,_thumbnail,_username) VALUES(?,?,?,?,?)";
            PreparedStatement prst = conn.prepareStatement(sql);
            prst.setString(1, title);
            prst.setString(2, content);
            prst.setString(3, summary);
            prst.setString(4, thumbnail);
            prst.setString(5, username);
            result = prst.executeUpdate();
            prst.close();
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(DBFunctionNews.class.getName()).log(Level.SEVERE, null, ex);
        }
        return result > 0;
    }
    
    public boolean editNews(String title, String content, String summary, String thumbnail, int id) {
        int result = 0;
        try {
            Connection conn = getConnection();
            String sql;
            PreparedStatement prst;
            if (thumbnail == null) {
                sql = "UPDATE tbl_Article SET _title=?, _content=?, _summary=? WHERE _id=?";
                prst = conn.prepareStatement(sql);
                prst.setString(1, title);
                prst.setString(2, content);
                prst.setString(3, summary);
                prst.setInt(4, id);
            } else {
                sql = "UPDATE tbl_Article SET _title=?, _content=?, _summary=?, _thumbnail=? WHERE _id=?";
                prst = conn.prepareStatement(sql);
                prst.setString(1, title);
                prst.setString(2, content);
                prst.setString(3, summary);
                prst.setString(4, thumbnail);
                prst.setInt(5, id);
            }
            result = prst.executeUpdate();
            prst.close();
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(DBFunctionNews.class.getName()).log(Level.SEVERE, null, ex);
        }
        return result > 0;
    }
    
    public boolean deleteNews(int id) {
        int result = 0;
        try {
            Connection conn = getConnection();
            String sql = "DELETE FROM tbl_Article WHERE _id=?";
            PreparedStatement prst = conn.prepareStatement(sql);
            prst.setInt(1, id);
            result = prst.executeUpdate();
            prst.close();
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(DBFunctionNews.class.getName()).log(Level.SEVERE, null, ex);
        }
        return result > 0;
    }
    
    //rating news
    public boolean ratingNews(int id, String username, int rate) {
        int result = 0;
        Connection conn = getConnection();
        int i = checkRatingNews(id, username);
        String query;
        PreparedStatement prst;
        try {
            if (i > 0) {
                query = "UPDATE tbl_ArticleRate SET _rate=? WHERE _id=?";
                prst = conn.prepareStatement(query);
                prst.setInt(1, rate);
                prst.setInt(2, i);
            } else {
                query = "INSERT INTO tbl_ArticleRate VALUES (?,?,?)";
                prst = conn.prepareStatement(query);
                prst.setInt(1, id);
                prst.setString(2, username);
                prst.setInt(3, rate);
            }
            result = prst.executeUpdate();
            prst.close();
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(DBFunctionNews.class.getName()).log(Level.SEVERE, null, ex);
        }
        return result > 0;
    }
    
    //check rating
    public int checkRatingNews(int id, String username) {
        int result = 0;
        Connection conn = getConnection();
        String query = "SELECT * FROM tbl_ArticleRate WHERE _articleid=? AND _username=?";
        try {
            PreparedStatement ps = getConnection().prepareStatement(query);
            ps.setInt(1, id);
            ps.setString(2, username);
            ResultSet rs = ps.executeQuery();
            while(rs.next())
            {
                result = rs.getInt(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DBFunctionNews.class.getName()).log(Level.SEVERE, null, ex);
        }
        return result;
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
            Logger.getLogger(DBFunctionNews.class.getName()).log(Level.SEVERE, null, ex);
        }
        return con;
    }

}
