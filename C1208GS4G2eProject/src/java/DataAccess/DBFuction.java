/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DataAccess;

import com.mysql.jdbc.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Think Different
 */
public class DBFuction {
//----------------get Connection

    private static Connection getConnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e1) {
            System.out.println("Lỗi jdbc: " + e1.toString());
        }

        Connection con = null;
        try {
            con = (Connection) DriverManager.getConnection("jdbc:mysql://210.245.81.92:3306/FIS", "bkhnjkt", "coffee");
        } catch (SQLException e) {
            System.out.println("" + e.toString());
        }

        return con;

    }

    public boolean insertQuery(int id, String username, String department, String category, String subject, String content, String dateOfLodging, String dateOfClosing, int status) {
        int result = 0;
        try {

            Connection conn = getConnection();
            String sql = "insert into tbl_Query values(?,?,?,?,?,?,?,?,?)";
            PreparedStatement prst = getPreparedStatement(sql);
            prst.setInt(1, id);
            prst.setString(2, username);
            prst.setString(3, department);
            prst.setString(4, category);
            prst.setString(5, subject);
            prst.setString(6, content);
            prst.setString(7, dateOfLodging);
            prst.setString(8, dateOfClosing);
            prst.setInt(9, status);
            result = prst.executeUpdate();
            prst.close();
            conn.close();

        } catch (SQLException ex) {
            Logger.getLogger(DBFuction.class.getName()).log(Level.SEVERE, null, ex);
        }
        return result > 0;
    }

//--------------- get PreparedStatement
    private static PreparedStatement getPreparedStatement(String sql) throws SQLException {
        return getConnection().clientPrepareStatement(sql);
    }
}
