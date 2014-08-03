/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Entity;

import java.util.ArrayList;

/**
 *
 * @author Think Different
 */
public class QueryAdmin {
    private String id;
    private String user;
    private String depart;
    private String category;
    private String subject;
    private String content;
    private String datelod;
    private String dateclose;
    private String status;
    private ArrayList<Comment> cmts;

    public ArrayList<Comment> getCmts() {
        return cmts;
    }

    public void setCmts(ArrayList<Comment> cmts) {
        this.cmts = cmts;
    }
    

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getDepart() {
        return depart;
    }

    public void setDepart(String depart) {
        this.depart = depart;
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

    public String getDatelod() {
        return datelod;
    }

    public void setDatelod(String datelod) {
        this.datelod = datelod;
    }

    public String getDateclose() {
        return dateclose;
    }

    public void setDateclose(String dateclose) {
        this.dateclose = dateclose;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
    
            
}
