/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DataAccess;

import Entity.Account;
import Entity.Job;
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
 * @author Minh Hung
 */
public class Technician {

    public ArrayList<Job> getJobs(String username) {
        String sql = "select * from tbl_Jobs where _username = '" + username + "'";
        ArrayList<Job> arr = new ArrayList<>();
        try {
            PreparedStatement pre = getConnection().prepareStatement(sql);
            ResultSet rs = pre.executeQuery();
            while (rs.next()) {
                Job job = new Job();
                job.setUsername(rs.getString("_username"));
                job.setDepartment(rs.getString("_department"));
                job.setCategory(rs.getString("_category"));
                arr.add(job);
            }
            pre.close();
        } catch (SQLException ex) {

        }
        return arr;
    }

    public ArrayList<QueryAdmin> getQueries(String username) {
        ArrayList<QueryAdmin> arr = new ArrayList<>();
        ArrayList<Job> jobs = getJobs(username);
        String sql = "select * from tbl_Query where ";
        for (int i = 0; i < jobs.size(); i++) {
            if (i == 0) {
                Job job = jobs.get(0);
                String department = job.getDepartment();
                String category = job.getCategory();
                sql += " _departmentID = '" + department + "' and _category ='" + category + "' ";
            } else {
                Job job = jobs.get(i);
                String department = job.getDepartment();
                String category = job.getCategory();
                sql += " or _departmentID = '" + department + "' and _category ='" + category + "' ";
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

    public int getTotal(int param, String username) {
        ArrayList<Job> jobs = getJobs(username);
        String sql = "";
        int count = 0;
        if (param == 100) {
            sql = "select count(*) as 'connut' from tbl_Query where ";
            for (int o = 0; o < jobs.size(); o++) {
                if (o == 0) {
                    Job job = jobs.get(0);
                    String department = job.getDepartment();
                    String category = job.getCategory();
                    sql += " _departmentID = '" + department + "' and _category ='" + category + "' ";
                } else {
                    Job job = jobs.get(o);
                    String department = job.getDepartment();
                    String category = job.getCategory();
                    sql += " or _departmentID = '" + department + "' and _category ='" + category + "' ";
                }

            }
        } else {
            sql = "select count(*) as 'connut' from tbl_Query where ";
            for (int o = 0; o < jobs.size(); o++) {
                if (o == 0) {
                    Job job = jobs.get(0);
                    String department = job.getDepartment();
                    String category = job.getCategory();
                    sql += " _departmentID = '" + department + "' and _category ='" + category + "' and _status = " + param;
                } else {
                    Job job = jobs.get(o);
                    String department = job.getDepartment();
                    String category = job.getCategory();
                    sql += " or _departmentID = '" + department + "' and _category ='" + category + "' and _status = " + param;
                }

            }
        }
        try {
            PreparedStatement pre = getConnection().prepareStatement(sql);
            ResultSet rs = pre.executeQuery();
            while (rs.next()) {
                count = rs.getInt("connut");
            }
            pre.close();
        } catch (SQLException ex) {

        }

        return count;
    }

    public int getNewTotal(int param, String username) {
        ArrayList<Job> jobs = getJobs(username);
        String sql = "";
        
        if (param == 100) {
            sql = "select count(*) as 'connut' from tbl_Query where ";
            for (int o = 0; o < jobs.size(); o++) {
                if (o == 0) {
                    Job job = jobs.get(0);
                    String department = job.getDepartment();
                    String category = job.getCategory();
                    sql += " _departmentID = '" + department + "' and _category ='" + category + "' and CONVERT(VARCHAR(10),_dateoflodging,110) like CONVERT(VARCHAR(10),GETDATE(),110)";
                } else {
                    Job job = jobs.get(o);
                    String department = job.getDepartment();
                    String category = job.getCategory();
                    sql += " or _departmentID = '" + department + "' and _category ='" + category + "' and CONVERT(VARCHAR(10),_dateoflodging,110) like CONVERT(VARCHAR(10),GETDATE(),110)";
                }

            }
        } else {
            sql = "select count(*) as 'connut' from tbl_Query where ";
            for (int o = 0; o < jobs.size(); o++) {
                if (o == 0) {
                    Job job = jobs.get(0);
                    String department = job.getDepartment();
                    String category = job.getCategory();
                    sql += " _departmentID = '" + department + "' and _category ='" + category + "' and CONVERT(VARCHAR(10),_dateoflodging,110) like CONVERT(VARCHAR(10),GETDATE(),110) and _status = " + param;
                } else {
                    Job job = jobs.get(o);
                    String department = job.getDepartment();
                    String category = job.getCategory();
                    sql += " or _departmentID = '" + department + "' and _category ='" + category + "' and CONVERT(VARCHAR(10),_dateoflodging,110) like CONVERT(VARCHAR(10),GETDATE(),110) and _status = " + param;
                }

            }
        }
        try {
            PreparedStatement pre = getConnection().prepareStatement(sql);
            ResultSet rs = pre.executeQuery();
            while (rs.next()) {
                param = rs.getInt("connut");
            }
            pre.close();
        } catch (SQLException ex) {

        }

        return param;
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
