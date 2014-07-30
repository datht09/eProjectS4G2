/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Entity;

/**
 *
 * @author Minh Hung
 */
public class Query {
    private int id;
    private String username;
    private String departmentID;
    private String category;
    private String subject;
    private String content;
    private String dateOfLodging;
    private String dateOfClosing;
    private int status;

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

    public String getDepartmentID() {
        return departmentID;
    }

    public void setDepartmentID(String departmentID) {
        this.departmentID = departmentID;
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

    public String getDateOfLodging() {
        return dateOfLodging;
    }

    public void setDateOfLodging(String dateOflodging) {
        this.dateOfLodging = dateOflodging;
    }

    public String getDateOfClosing() {
        return dateOfClosing;
    }

    public void setDateOfClosing(String dateOfClosing) {
        this.dateOfClosing = dateOfClosing;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public Query(int id, String username, String departmentID, String category, String subject, String content, String dateOflodging, String dateOfClosing, int status) {
        this.id = id;
        this.username = username;
        this.departmentID = departmentID;
        this.category = category;
        this.subject = subject;
        this.content = content;
        this.dateOfLodging = dateOflodging;
        this.dateOfClosing = dateOfClosing;
        this.status = status;
    }

    public Query() {
    }
    
    
            
}
