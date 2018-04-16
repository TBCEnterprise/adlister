package com.codeup.adlister.util;

import com.codeup.adlister.dao.Config;

import java.util.Date;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class EmailUtility {
    private static Config config = new Config();
    public static void sendEmail(String toAddress, String subject, String message) throws AddressException, MessagingException {
        // sets SMTP server properties
        Properties emailProperties = new Properties();
        emailProperties.put("mail.smtp.starttls.enable", "true");
        emailProperties.put("mail.smtp.host", "smtp.gmail.com");
        emailProperties.put("mail.smtp.auth", "true");
        emailProperties.put("mail.smtp.port", "587");
        emailProperties.put("mail.smtp.socketFactory.port", "587");
        emailProperties.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");

        // creates a new session with an authenticator
        Authenticator auth = new Authenticator() {
            public PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(config.getMail(),config.getMailPass());
            }
        };

        Session session = Session.getInstance(emailProperties, auth);

        System.out.println("emailProperties = " + emailProperties);
        // creates a new e-mail message
        Message msg = new MimeMessage(session);

        msg.setFrom(new InternetAddress(config.getMail()));
        InternetAddress[] toAddresses = { new InternetAddress(toAddress) };
        msg.setRecipients(Message.RecipientType.TO, toAddresses);
        msg.setSubject(subject);
        msg.setSentDate(new Date());
        msg.setText(message);

        // sends the e-mail
        Transport.send(msg);

    }
}