/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Entity;

/**
 *
 * @author KhoaNN
 */
public class CustomDate {
    private String date;
    private String month;
    private String year;
    private String all;

    @Override
    public String toString() {
        return  year+" "+ month+" "+date;
    }

    public String getAll() {
         return  all;
    }

    public void setAll(String all) {
        this.all = all;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getMonth() {
        return month;
    }

    public void setMonth(String month) {
        this.month = month;
    }

    public String getYear() {
        return year;
    }

    public void setYear(String year) {
        this.year = year;
    }

    public CustomDate() {
        this.all=year+" "+ month+" "+date;
    }
    
    
}
