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
            con = (Connection) DriverManager.getConnection("jdbc:mysql://210.245.81.92:3306/FIS", "bkhnjkt","coffee");
        } catch (SQLException e) {
            System.out.println("" + e.toString());
        }

        return con;

    }
 //--------------- get PreparedStatement
    private static PreparedStatement getPreparedStatement(String sql) throws SQLException{
        return getConnection().clientPrepareStatement(sql);
    }
}
