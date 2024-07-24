/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lostvote.handlers;

import com.lostvote.helpers.SendEmail;
import java.io.IOException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;

/**
 *
 * @author mahin
 */
public class send extends SimpleTagSupport {

    private String contact_name;
    private String contact_subject;
    private String contact_email;
    private String contact_message;

    /**
     * Called by the container to invoke this tag. The implementation of this
     * method is provided by the tag library developer, and handles all tag
     * processing, body iteration, etc.
     *
     * @throws javax.servlet.jsp.JspException
     */
    @Override
    public void doTag() throws JspException {
        JspWriter out = getJspContext().getOut();

        try {
            // alter message and add username and email
            String message = contact_message + "\n\n\nSender Name : " + contact_name + "\nSender Email : " + contact_email;

            // send mail using com.lostvote.helpers.SendEMail.send()
            boolean result = SendEmail.send(new String[]{
                "mahinsojitra16@gmail.com",
                "yagnikpithva31@gmail.com"
            }, contact_subject, message);

            if (result) {
                out.print("<div class=\"alert alert-success alert-dismissible fade show\" role=\"alert\">"
                        + " <strong>Success!</strong> Your Responce Has Been Recorded."
                        + " <button type=\"button\" class=\"btn-close\" data-bs-dismiss=\"alert\" aria-label=\"Close\"></button>"
                        + " </div>");
            } else {
                out.print("<div class=\"alert alert-warning alert-dismissible fade show\" role=\"alert\">"
                        + " <strong>Failure!</strong> Somthing Went Wrong !"
                        + " <button type=\"button\" class=\"btn-close\" data-bs-dismiss=\"alert\" aria-label=\"Close\"></button>"
                        + " </div>");
            }

        } catch (IOException ex) {
            throw new JspException("Error in send tag", ex);
        }
    }

    public void setContact_name(String contact_name) {
        this.contact_name = contact_name;
    }

    public void setContact_subject(String contact_subject) {
        this.contact_subject = contact_subject;
    }

    public void setContact_email(String contact_email) {
        this.contact_email = contact_email;
    }

    public void setContact_message(String contact_message) {
        this.contact_message = contact_message;
    }

}
