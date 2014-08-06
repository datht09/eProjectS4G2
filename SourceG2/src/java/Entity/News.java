/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Entity;

/**
 *
 * @author KhoaNN
 */
public class News {
    private int id;
    private String title;
    private String content;
    private String summary;
    private String thumbnail;
    private String username;
    private String dateOfPost;
    private int star;
    private CustomDate cDate;

    public int getStar() {
        return star;
    }

    public void setStar(int star) {
        this.star = star;
    }

    public CustomDate getcDate() {
        return cDate;
    }

    public void setcDate(CustomDate cDate) {
        this.cDate = cDate;
    }
    
    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

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

    public String getDateOfPost() {
        return dateOfPost;
    }

    public void setDateOfPost(String dateOfPost) {
        this.dateOfPost = dateOfPost;
    }

    public News(int id, String title, String content, String summary, String thumbnail, String username, String dateOfPost, int star) {
        this.id = id;
        this.title = title;
        this.content = content;
        this.summary = summary;
        this.thumbnail = thumbnail;
        this.username = username;
        this.dateOfPost = dateOfPost;
        this.star = star;
    }
    
}
