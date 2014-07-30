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
public class Reply {
    private int id;
    private int queryid;
    private String username;
    private String content;
    private String date;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getQueryid() {
        return queryid;
    }

    public void setQueryid(int queryid) {
        this.queryid = queryid;
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

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public Reply(int id, int queryid, String username, String content, String date) {
        this.id = id;
        this.queryid = queryid;
        this.username = username;
        this.content = content;
        this.date = date;
    }

    public Reply() {
    }
    
    
}
