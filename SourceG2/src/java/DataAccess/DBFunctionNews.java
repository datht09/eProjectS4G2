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
    


    //get Top 5 News
    public Vector<News> getNewsTop5() {
        Vector<News> vectorNews = new Vector<>();
        String sql = "SELECT TOP 5 * FROM tbl_Article ORDER BY _id DESC";

        try {
            ResultSet rs = getConnection().createStatement().executeQuery(sql);
            while (rs.next())
            {
                News temp = new News(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7));
                String[] ss=rs.getDate("_dateofpost").toString().split("-");
                CustomDate date=new CustomDate();
                date.setYear(ss[0]);
                date.setMonth(getMonthForInt(Integer.parseInt(ss[1])-1));
                date.setDate(ss[2]);
                temp.setcDate(date);
                System.out.println(""+date);
                
                
                vectorNews.add(temp);
            }
            rs.close();
        } catch (SQLException ex) {
            Logger.getLogger(DBFunctionNews.class.getName()).log(Level.SEVERE, null, ex);
        }

        return vectorNews;
    }
    
    //get news data
    public Vector<News> getNews(String type, String content) {
        Vector<News> vectorNews = new Vector<>();
        String query = "";
        switch(type) {
            case "Top5": query = "SELECT TOP 5 * FROM tbl_Article ORDER BY _id DESC";
                break;
            case "All": query = "SELECT * FROM tbl_Article ORDER BY _id DESC";
                break;
            case "Date": query = "SELECT * FROM tbl_Article WHERE CONVERT(varchar(10),_dateofpost,102) LIKE '"+content+"%' ORDER BY _id DESC";
                break;
            default: query = "SELECT * FROM tbl_Article ORDER BY _id DESC";
                break;
        }
        try {
            ResultSet rs = getConnection().createStatement().executeQuery(query);
            while (rs.next())
            {
                News temp = new News(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7));
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
        String query = "SELECT * FROM tbl_Article WHERE _id = ?";
        try {
            PreparedStatement ps = getConnection().prepareStatement(query);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while(rs.next())
            {
                temp = new News(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7));
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

    private Connection getConnection() {
        Connection con = null;

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String user = "sa";
            String pass = "123456";
            String sql = "jdbc:sqlserver://localhost:1433;databaseName=FIS";
            con = DriverManager.getConnection(sql, user, pass);
        } catch (SQLException ex) {
            Logger.getLogger(DBFunctionNews.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DBFunctionNews.class.getName()).log(Level.SEVERE, null, ex);
        }
        return con;
    }

}
