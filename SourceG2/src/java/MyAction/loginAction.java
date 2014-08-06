/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package MyAction;

import DataAccess.DBFunction;
import javax.servlet.http.HttpSession;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;
import org.apache.struts2.dispatcher.SessionMap;  
import com.opensymphony.xwork2.ActionSupport;
import javax.swing.ActionMap;

/**
 *
 * @author Think Different
 */
public class loginAction extends ActionSupport implements SessionAware{
    String user;
    String pass;
   SessionMap<String,String> session;

    public Map getSession() {
        return session;
    }

    @Override
    public void setSession(Map session) {
        this.session = (SessionMap)session;
    }
    
    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }
    
    public loginAction() {
    }
    
    @Override
    public String execute() throws Exception {
       DBFunction function = new DBFunction();
        if (function.checkLogin(user, pass, 1)) {
            session.put("user", user);
            addActionMessage("Login Success");
            return SUCCESS;
        } else if(function.checkLogin(user, pass, 0)) {
            session.put("admin", user);
            addActionMessage("Login Success");
            return "ADMIN";
        } else {
           if(getSession().containsKey("user")){
               getSession().remove("user");
           }
           addActionError("Login:faied > Username or Password invalid !");
           return "FAILED";
       }
    }
    
   
    
}
