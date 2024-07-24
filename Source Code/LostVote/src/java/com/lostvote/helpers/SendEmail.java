package com.lostvote.helpers;

import java.util.Properties;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.MimeMessage;

public class SendEmail {

    public static boolean send(String[] toAddresses, String subject, String message) {
        
        // concate all elements of an toAddresses by (,) 
        String to = "";
        for (int i = 0; i < toAddresses.length; i++) {  
            if(i == (toAddresses.length - 1)) {
                to += toAddresses[i];
            } else {
                to += toAddresses[i]+",";
            }
        }
        
        // declare from email and application specific password 
        String from = "lostvote.portal@gmail.com";
        String password = "qmnckqmvmefrjrlw";
        
        // get properties of system
        Properties properties = System.getProperties();

        // set the other properties in properties object
        properties.put("mail.smtp.host", "smtp.gmail.com");
        properties.put("mail.smtp.port", "465");
        properties.put("mail.smtp.ssl.enable", "true");
        properties.put("mail.smtp.auth", "true");

        // get session object
        Session session = Session.getInstance(properties, new Authenticator() {

            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                // TODO Auto-generated method stub
                return new PasswordAuthentication(from, password);
            }
        });

        // set Debug on
        session.setDebug(true);

        // compose message with the help of 
        MimeMessage composeMessage = new MimeMessage(session);

        // set from, to(), subject, and message.
        try {
            composeMessage.setFrom(from);
            composeMessage.setRecipients(Message.RecipientType.TO, to);
            composeMessage.setSubject(subject);
            composeMessage.setText(message);

            // send message using Transport class
            Transport.send(composeMessage);
            
        } catch (MessagingException e) {
            return false;
        }

        return true;
    }
}
