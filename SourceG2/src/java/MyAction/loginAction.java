/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package MyAction;

import DataAccess.DBFunction;

import java.util.Map;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
import javax.swing.ActionMap;

/**
 *
 * @author Think Different
 */
public class loginAction extends ActionSupport implements SessionAware{
    String user;
    String pass;
    Map session;

    public Map getSession() {
        return session;
    }

    @Override
    public void setSession(Map session) {
        this.session = session;
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
       if(DBFunction.checkLogin(user, pass,1)){
          getSession().put("user",user);
           addActionMessage("Login Success");
           return SUCCESS;
       }else{
           if(getSession().containsKey("user")){
               getSession().remove("user");
           }
           addActionError("Login:faied > Username or Password invalid !");
           return "FAILED";
       }
    }

   
    
}
