import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;
 
public class Auth extends Authenticator {
 
  public Auth() {
    super();
  }
 
  public PasswordAuthentication getPasswordAuthentication() {
    String username, password;
    username = "PUT THE EMAIL HERERERERERERERE@gmail.com";
    password = "PUT THE PASSWORD HERERERERERERERER";
    System.out.println("authenticating... ");
    return new PasswordAuthentication(username, password);
  }
}