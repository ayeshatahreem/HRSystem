package Model;

import java.util.*;
import javax.mail.*;
import javax.mail.internet.*;
/**
 * Created by ayesh on 3/13/2017.
 */
public class Email
{
    private static String USER_NAME = "codeclan324";  // GMail user name (just the part before "@gmail.com")
    private static String PASSWORD = "codeclan@123"; // GMail password
    private static String[] RECIPIENT = {"codeclan324@gmail.com"};

    public static void send(String[] to, String subject, String body){
        sendFromGMail(to, subject, body);

    }
    private static void sendFromGMail(String[] to,String subject, String body) {
        Properties props = System.getProperties();
        String host = "smtp.gmail.com";
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.ssl.trust", host);
        props.put("mail.smtp.user", USER_NAME);
        props.put("mail.smtp.password", PASSWORD);
        props.put("mail.smtp.port", "587");
        props.put("mail.smtp.auth", "true");
        Session session = Session.getDefaultInstance(props);
        MimeMessage message = new MimeMessage(session);
        try
        {
            message.setFrom(new InternetAddress(USER_NAME));
            InternetAddress[] toAddress = new InternetAddress[to.length];
            for( int i = 0; i < to.length; toAddress[i] = new InternetAddress(to[i]),i++ );
            for( int i = 0; i < toAddress.length;message.addRecipient(Message.RecipientType.TO, toAddress[i]), i++) ;
            message.setSubject(subject);
            message.setText(body);
            Transport transport = session.getTransport("smtp");
            transport.connect(host, USER_NAME, PASSWORD);
            transport.sendMessage(message, message.getAllRecipients());
            transport.close();
        }
        catch (MessagingException me)
        {
            me.printStackTrace();
        }
    }
}