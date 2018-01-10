package wedding;

/**
 * Created by JamesHartanto on 1/9/18.
 */
import javax.mail.*;
import javax.mail.internet.*;
import java.util.List;
import java.util.Properties;

public class SendMail {
    public static void main(String[] args) {
        // username and password
        final String username = ""; //Enter email login username
        final String password = ""; //Enter email login password

        // properties for gmail
        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");

        // create session
        Session session = Session.getInstance(props,
                new javax.mail.Authenticator() {
                    protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication(username, password);
                    }
                });

        // create message
        try {
            WeddingRepository weddingRepository = new WeddingRepository();
            List<Guest> guestList = weddingRepository.listGuests();

            for (int x = 0; x < guestList.size(); x++){

                Message message = new MimeMessage(session);
                message.setFrom(new InternetAddress("jameshartanto1993@gmail.com")); //Sender's Email Address (FROM)
                message.setRecipients(Message.RecipientType.TO,
                        InternetAddress.parse(guestList.get(x).getEmail())); //Receiver's Email Address (TO)
                message.setSubject("Test"); // Subject Line
                message.setText("Hello"); // Body Text

                // send message
                Transport.send(message);
            }

//            Message message = new MimeMessage(session);
//            message.setFrom(new InternetAddress("jameshartanto1993@gmail.com")); //Sender's Email Address (FROM)
//            message.setRecipients(Message.RecipientType.TO,
//                    InternetAddress.parse("jameshartanto1993@gmail.com")); //Receiver's Email Address (TO)
//            message.setSubject("Test"); // Subject Line
//            message.setText("Hello"); // Body Text
//
//            // send message
//            Transport.send(message);

            // catch error
        } catch (MessagingException e) {
            throw new RuntimeException(e);
        }
    }
}
