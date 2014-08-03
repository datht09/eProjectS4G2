/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package MyAction;

import DataAccess.DBFunctionNews;
import com.opensymphony.xwork2.ActionSupport;

/**
 *
 * @author KhoaNN
 */
public class addNewsAction extends ActionSupport {
    private String title;
    private String content;
    private String summary;
    private String thumbnail;
    private String username;

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getSummary() {
        return summary;
    }

    public void setSummary(String summary) {
        this.summary = summary;
    }

    public String getThumbnail() {
        return thumbnail;
    }

    public void setThumbnail(String thumbnail) {
        this.thumbnail = thumbnail;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }
    
    public addNewsAction() {
    }
    
    @Override
    public String execute() throws Exception {
        DBFunctionNews db = new DBFunctionNews();
        if (db.addNews(title,content,summary,thumbnail,username)) {
            return SUCCESS;
        }
        return "FAILED";
    }
    
}
