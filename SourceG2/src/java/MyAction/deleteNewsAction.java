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
public class deleteNewsAction extends ActionSupport {
    private int id;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
    public deleteNewsAction() {
    }
    
    @Override
    public String execute() throws Exception {
        DBFunctionNews db = new DBFunctionNews();
        if (db.deleteNews(id)) {
            return SUCCESS;
        }
        return "FAILED";
    }
    
}
