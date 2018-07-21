package Connection;
import javax.mail.PasswordAuthentication;
import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;


public class SendMailSSL {
  public static void sendEmail(String toEmail)
  {
     //Get the session object
         Properties props = new Properties();
         props.put("mail.smtp.host", "smtp.gmail.com");
         props.put("mail.smtp.socketFactory.port", "465");
         props.put("mail.smtp.socketFactory.class",
            "javax.net.ssl.SSLSocketFactory");
         props.put("mail.smtp.auth", "true");
         props.put("mail.smtp.port", "465");
         Session session = Session.getDefaultInstance(props,
   new javax.mail.Authenticator() {
   @Override
   protected PasswordAuthentication getPasswordAuthentication() {
        //char  password[] = "9009557337".toCharArray();
        return new PasswordAuthentication("ebookteam125@gmail.com","ebook@ebook");//change accordingly
   }
  });

 
        try {
           MimeMessage message = new MimeMessage(session);
           message.setFrom(new InternetAddress("ebookteam125@gmail.com"));//change accordingly
           message.addRecipient(Message.RecipientType.TO,new InternetAddress(toEmail));
           message.setSubject("Carlo Services Verification");
           String data = "<h3>Dear User</h3></br>";
           data = data+"Thank You For Registration. To use Carlo Services please verify your accout by clicking on the below link.";
           data = data+"<br>";
           
           data = data+"<a href='http://localhost:8084/carlo1/verify_user.jsp?user_email="+toEmail+"'>Verify Account</a>";
           data = data +"<br><h3>Thanks<h3><br>Carlo Team" ;  
           message.setContent(data, "text/html");
           Transport.send(message);
           
            System.out.println("message sent successfully");
        } catch (MessagingException e)
        {
            e.printStackTrace();
        }
    }
}
