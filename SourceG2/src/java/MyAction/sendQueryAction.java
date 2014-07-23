/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MyAction;

import DataAccess.DBFunction;
import com.opensymphony.xwork2.ActionSupport;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Think Different
 */
public class sendQueryAction extends ActionSupport {

    private String username;
    private String category;
    private String subject;
    private String content;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public sendQueryAction() {
    }

    @Override
    public String execute() throws Exception {
        DBFunction db = new DBFunction();
        if (db.insertQuery(username, category, subject, content)) {
            return SUCCESS;
        }
        return "FAILED";
    }

}
