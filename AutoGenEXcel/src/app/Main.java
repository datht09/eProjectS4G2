/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package app;

import java.io.FileOutputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.poi.hssf.usermodel.HSSFCellStyle;
import org.apache.poi.hssf.usermodel.HSSFFont;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.BorderStyle;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.IndexedColors;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFCellStyle;
import org.apache.poi.xssf.usermodel.XSSFColor;
import org.apache.poi.xssf.usermodel.XSSFFont;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

/**
 *
 * @author Think Different
 */
public class Main {
   
   
    
    public static String writeToFile(String fileName, ArrayList<String> songList) throws Exception {
        Workbook workbook = null;

        if (fileName.endsWith("xlsx")) {
            workbook = new XSSFWorkbook();
        } else if (fileName.endsWith("xls")) {
            workbook = new HSSFWorkbook();

        } else {
            fileName = fileName + ".xlsx";
            workbook = new XSSFWorkbook();
        }

        Sheet sheet = workbook.createSheet("Danh sách sdt hủy VIP,CAUMB,CAUMN thang 4,5,6");

        Iterator<String> iterator = songList.iterator();

        int rowIndex = 0;
        while (iterator.hasNext()) {
            String song = iterator.next();
            Row row = sheet.createRow(rowIndex++);

            Cell cell0 = row.createCell(0);
            cell0.setCellValue(song);
          

            }
            
           
        

        //lets write the excel data to file now
        FileOutputStream fos = new FileOutputStream(fileName);
        workbook.write(fos);
        fos.close();
        System.out.println(fileName + " written successfully");
        return fileName;
    }
  public  static ArrayList<String> getResult(){
        ArrayList<String> arr=new ArrayList<>();
        String sql="SELECT DISTINCT user_id FROM s2.mlist_subcriber_cancel where date like '2014-06%' or date like '2014-05%' or date like '2014-04%' limit 100000";
        try {
            PreparedStatement pre=getConnection().prepareStatement(sql);
            ResultSet rs=pre.executeQuery();
            while(rs.next()){
                arr.add(rs.getString("user_id"));
            }
            pre.close();
            
        } catch (SQLException ex) {
            Logger.getLogger(Main.class.getName()).log(Level.SEVERE, null, ex);
        }
        return arr;
    }
    
    
    
    private static Connection getConnection(){

        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e1) {
            System.out.println("Lỗi jdbc: "+e1.toString());
        }

   Connection  con = null;
    try {
        con = (com.mysql.jdbc.Connection) DriverManager.getConnection("jdbc:mysql://210.245.81.92:3306/s2", "bkhnjkt", "coffee");
    } catch (SQLException e) {
        System.out.println(""+e.toString());
    }


        return con;
    }
}
