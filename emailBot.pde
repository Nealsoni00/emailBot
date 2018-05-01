import javax.mail.*;
import javax.mail.internet.*;

void setup() {
  size(200,200);
  
  Table table = loadTable("APAssasinationEmailTargetCSV.csv", "header");

  for (TableRow row : table.rows()) {  
    String email   =  row.getString("Email");
    String name    =  row.getString("Name");
    String target  =  row.getString("Target");
    
    String[] names = split(name," ");
    String firstName = names[0];

    String[] stuff = {email, firstName, target};
    println(stuff);
    sendMail(stuff);
    break;
  }
  println("Finished");
  noLoop();
}