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

     private static final String[] tensNames = {
    "",
    "ten",
    "twenty",
    "thirty",
    "forty",
    "fifty",
    "sixty",
    "seventy",
    "eighty",
    "ninety"
  };

  private static final String[] numNames = {
    "",
    "one",
    "two",
    "three",
    "four",
    "five",
    "six",
    "seven",
    "eight",
    "nine",
    "ten",
    "eleven",
    "twelve",
    "thirteen",
    "fourteen",
    "fifteen",
    "sixteen",
    "seventeen",
    "eighteen",
    "nineteen"
  };



  private static String convertLessThanOneThousand(int number) {
    String soFar;

    if (number % 100 < 20){
      soFar = numNames[number % 100];
      number /= 100;
    }
    else {
      soFar = numNames[number % 10];
      number /= 10;

      soFar = tensNames[number % 10] + soFar;
      number /= 10;
    }
    if (number == 0) return soFar;
    return numNames[number] + "hundred" + soFar;
  }


  public  String convertToString(long number) {
    // 0 to 999 999 999 999
    if (number == 0) { return "zero"; }

    String snumber = Long.toString(number);

    // pad with "0"
    String mask = "000000000000";
    DecimalFormat df = new DecimalFormat(mask);
    snumber = df.format(number);

    // XXXnnnnnnnnn
    int billions = Integer.parseInt(snumber.substring(0,3));
    // nnnXXXnnnnnn
    int millions  = Integer.parseInt(snumber.substring(3,6));
    // nnnnnnXXXnnn
    int hundredThousands = Integer.parseInt(snumber.substring(6,9));
    // nnnnnnnnnXXX
    int thousands = Integer.parseInt(snumber.substring(9,12));

    String tradBillions;
    switch (billions) {
    case 0:
      tradBillions = "";
      break;
    case 1 :
      tradBillions = convertLessThanOneThousand(billions)
      + " billion";
      break;
    default :
      tradBillions = convertLessThanOneThousand(billions)
      + " billion";
    }
    String result =  tradBillions;

    String tradMillions;
    switch (millions) {
    case 0:
      tradMillions = "";
      break;
    case 1 :
      tradMillions = convertLessThanOneThousand(millions)
         + " million";
      break;
    default :
      tradMillions = convertLessThanOneThousand(millions)
         + " million";
    }
    result =  result + tradMillions;

    String tradHundredThousands;
    switch (hundredThousands) {
    case 0:
      tradHundredThousands = "";
      break;
    case 1 :
      tradHundredThousands = "onethousand";
      break;
    default :
      tradHundredThousands = convertLessThanOneThousand(hundredThousands)
         + "thousand";
    }
    result =  result + tradHundredThousands;

    String tradThousand;
    tradThousand = convertLessThanOneThousand(thousands);
    result =  result + tradThousand;

    // remove extra spaces!
    return result;
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
