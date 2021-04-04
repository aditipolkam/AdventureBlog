/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package blog.model;

import java.util.Date;

/**
 *
 * @author Aditi Polkam
 */

public class Tour {
    
    private String tourId = "";
    private String departurePlace = "";
    private String destination = "";
    private String duration = "";
    private String departureDate = "";
    private String amount = "";
    
    public Tour(){
        //default
    }
    public Tour(String tourId,String destination,String duration,String departurePlace,String departureDate,String amount){
        this.tourId = tourId;
        this.destination = destination;
        this.duration = duration;
        this.departurePlace = departurePlace;        
        this.departureDate = departureDate;
        this.amount = amount;
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
    
    public String getDuration(){
        return duration;
    }
    public void setDuration(String duration){
        this.duration = duration;
    }
    
    public String getDeparturePlace(){
        return departurePlace;
    }
    public void setDeparturePlace(String departurePlace){
        this.departurePlace = departurePlace;
    }
    
    public String getDepartureDate(){
        return departureDate;
    }
    public void setDepartureDate(String departureDate){
        this.departureDate = departureDate;
    }
    
    public String getAmount(){
        return amount;
    }
    public void setAmount(String amount){
        this.amount = amount;
    }
}
