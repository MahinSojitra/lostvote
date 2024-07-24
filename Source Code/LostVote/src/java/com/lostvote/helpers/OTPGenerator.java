/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lostvote.helpers;

import java.util.Random;

/**
 *
 * @author mahin
 */
public class OTPGenerator {
    
    // OTPGenerator's GetOTP method  
    public static String GetOTP(int length)
    {  
        // Using numeric values
        String numbers = "0123456789";
  
        // Using random method
        Random rndm_method = new Random();
  
        char[] otp = new char[length];
  
        for (int i = 0; i < length; i++)
        {
            // Use of charAt() method : to get character value
            // Use of nextInt() as it is scanning the value as int
            otp[i] = numbers.charAt(rndm_method.nextInt(numbers.length()));
        }
        
        // return the otp
        String stringOTP = new String(otp);
        return stringOTP;
    }
    
}
