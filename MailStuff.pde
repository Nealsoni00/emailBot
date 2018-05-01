import java.util.*;
import java.io.*;
import javax.activation.*;
 
// A function to send mail
void sendMail(String[] stuff) {
  // Create a session
  String host="smtp.gmail.com";
  Properties props=new Properties();
 
  // SMTP Session
  props.put("mail.transport.protocol", "smtp");
  props.put("mail.smtp.host", host);
  props.put("mail.smtp.port", "587");
  props.put("mail.smtp.auth", "true");
  // We need TTLS, which gmail requires
  props.put("mail.smtp.starttls.enable","true");
 
  // Create a session
  Session session = Session.getDefaultInstance(props, new Auth());
 
  try
  {
    MimeMessage msg=new MimeMessage(session);
    msg.setFrom(new InternetAddress("nealsoni00@gmail.com", "Neal Soni"));
    msg.addRecipient(Message.RecipientType.TO,new InternetAddress(stuff[0]));
    msg.addRecipient(Message.RecipientType.BCC,new InternetAddress(loadStrings("code/test.txt")[0]));

    msg.setSubject("AP Assasination Round 1 Target");
    BodyPart messageBodyPart = new MimeBodyPart();
 // Fill the message
     Multipart multipart = new MimeMultipart();

    String message = "Hi " + stuff[1];
    
    message += "\n\nTHIS IS THE TEXT NICOLE AND DAN NEED TO WRITE";
    
    message += "\n\nYour target is: " + stuff[2];
    
    messageBodyPart.setText(message);
    
    multipart.addBodyPart(messageBodyPart);
    print(message);
    msg.setContent(multipart);
    msg.setSentDate(new Date());
    Transport.send(msg);
    println("Mail sent!");
  }
  catch(Exception e)
  {
    e.printStackTrace();
  }
 
}