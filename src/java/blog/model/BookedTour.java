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
public class BookedTour {
    
    private int transactionId = 0;
    private String tourId = "";
    private String destination = ""; 
    private String username = "";
    private int seats = 0;
    private String totalAmount = "";
    
    public BookedTour(){
        
    }
    public void BookedTour(int transactionId,String tourId,String destination,String username,int seats,String totalAmount){
        this.transactionId = transactionId;
        this.tourId = tourId;
        this.destination = destination;
        this.username = username;
        this.seats = seats;
        this.totalAmount = totalAmount;
    }
    
    public int getTransactionId(){
        return transactionId;
    }
    public void setTransactionId(int transactionId){
        this.transactionId = transactionId;
    }
        
    public String getTourId(){
        return tourId;
    }
    public void setTourId(String tourId){
        this.tourId = tourId;
    }

    
    public String getDestination(){
        return destination;
    }
    public void setDestination(String destination){
        this.destination = destination;
    }

    public String getUsername(){
        return username;
    }
    public void setUsername(String username){
        this.username = username;
    }
    
    public int getSeats(){
        return seats;
    }
    public void setSeats(int seats){
        this.seats = seats;
    }
    
    public String getTotalAmount(){
        return totalAmount;
    }
    public void setTotalAmount(String totalAmount){
        this.totalAmount = totalAmount;
    }
}
