/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package MyAction;

import DataAccess.DBFunctionNews;
import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionSupport;

/**
 *
 * @author KhoaNN
 */
public class ratingNewsAction extends ActionSupport {
    private int id;
    private String username;
    private int rate;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public int getRate() {
        return rate;
    }

    public void setRate(int rate) {
        this.rate = rate;
    }
    
    public ratingNewsAction() {
    }
    
    @Override
    public String execute() throws Exception {
        DBFunctionNews db = new DBFunctionNews();
        if (db.ratingNews(id, username, rate)) {
            return SUCCESS;
        }
        return "FAILED";
    }
    
}
