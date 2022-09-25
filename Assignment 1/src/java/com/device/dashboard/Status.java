/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.device.dashboard;

/**
 *
 * @author rakshit
 */
public class Status {
    
    public String temperature_status;
    public String temperature_status_colour;
    public String reading_timestamp;
     
    public Status(String temperature_status, String temperature_status_colour, String reading_timestamp) {
        this.temperature_status = temperature_status;
        this.temperature_status_colour = temperature_status_colour;
        this.reading_timestamp = reading_timestamp;
    }
    
}
