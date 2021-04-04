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
public class User {
    
    private String username = "";
    private String cname = "";
    private String gender = "";
    private String email = "";
    private String contact = "";
    private String password = "";
    
    public User(String username,String cname,String gender,String email,String contact,String password){
        this.username = username;
        this.cname = cname;
        this.gender = gender;
        this.email = email;
        this.contact = contact;
        this.password = password;
        
    }
    
    public User() {
	// TODO Auto-generated constructor stub
    }
    
    //username
    public String getUsername() {
	return username;
    }
    public void setUsername(String username) {
	this.username = username;
    }
    //customer name
    public String getCname(){
        return cname;
    }
    public void setCname(String cname){
        this.cname = cname;
    }
    //gender
    public String getGender(){
        return gender;
    }
    public void setGender(String gender){
        this.gender = gender;
    }
    //email
    public String getEmail(){
        return email;
    }
    public void setEmail(String email){
        this.email = email;
    }
    //contact
    public String getContact(){
        return contact;
    }
    public void setContact(String contact){
        this.contact= contact;
    }
    //password
    public String getPassword() {
	return password ;
    }
    public void setPassword(String password) {
        this.password=password;
    }
}
