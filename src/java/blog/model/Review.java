/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package blog.model;

/**
 *
 * @author Aditi Polkam
 */
public class Review {
    
    private String username = "";
    private String cname = "";
    private String reviewtext = "";
    
    public Review(String username,String cname,String reviewtext){
        this.username = username;
        this.cname = cname;
        this.reviewtext = reviewtext;
    }
    
    public Review(){
        //default
    }
    
    //username
    public String getUsername(){
        return username;
    }
    public void setUsername(String username){
        this.username = username;
    }
    
    //customername of review
    public String getCname(){
        return cname;
    }
    public void setCname(String cname){
        this.cname = cname;
    }
    
    //Review text
    public String getReviewtext(){
        return reviewtext;
    }
    public void setReviewtext(String reviewtext){
        this.reviewtext = reviewtext;
    }
}
