/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.sql.Time;
import java.util.Date;

/**
 *
 * @author HP
 */
public class time {
 
    
    public static void main(String[] args) {
        //String time=(java.time.LocalTime.now().toString());
        // long time1=Long.parseLong(time);
        Date d=new Date();
        Long l=d.getTime();
        System.out.println(l);
        
        
        
    }
}
