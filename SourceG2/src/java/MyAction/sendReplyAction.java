/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package MyAction;

import DataAccess.DBFunction;
import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.dispatcher.Dispatcher;

/**
 *
 * @author Minh Hung
 */
public class sendReplyAction extends ActionSupport {
    private int queryID;
    private String username;
    private String content;

    public int getQueryID() {
        return queryID;
    }

    public void setQueryID(int queryID) {
        this.queryID = queryID;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
    
    
    
    public sendReplyAction() {
    }
    
    @Override
    public String execute() throws Exception {
        DBFunction db = new DBFunction();
        if (db.insertReply(queryID, username, content)) {
            return SUCCESS;
        }
        return "FAILED";
    }
    
}
