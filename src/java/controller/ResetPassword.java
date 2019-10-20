package controller;

import java.io.IOException;
import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.User;
import dao.UserDAOImple;

public class ResetPassword extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private final UserDAOImple userDAO = new UserDAOImple();

    public ResetPassword() {
        super();
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
        throws ServletException, IOException {
        String username = request.getParameter("username");
        
        String error = "";
        if (username.equals("")) {
            error += "Username is required!";
        } 
        else {
            if (userDAO.checkUser(username) == false) {
                error += "Username is incorrect!";
            }
        }
        if (error.length() > 0) {
            request.setAttribute("error", error);
        }
        
        String url = "/resetpassword.jsp";
        try {
            if (error.length() == 0) {
                User u = userDAO.getUser(username);
                //sau update thanh random password
                User new_user = new User(u.getMa_nguoi_dung(), username, "resetpassword", u.getNgay_sinh(), u.getGioi_tinh(), u.getEmail(), u.getSdt(), u.getDia_chi(), u.getRo_le());
                userDAO.updateUser(new_user);
                url = "/signin.jsp";
                
                String messager = "New Password has been sent to your email! Check your email, please!";
                request.setAttribute("messager", messager);
                
//                //gửi mật khẩu mới qua email.
//                final String username_mail = "kbs07101999@gmail.com";
//                final String password = "Kbsnetone1";
//                String to = u.getEmail();
//                String subject = "Reset Password";
//                String text ="<i>Reset Password</i><br/>";
//                    text+="<p>User: <strong>"; text+=username; text+="</strong></p>";
//                    text+="<p>New password: <strong>passwordreset</strong></p>";
//                Properties props = new Properties();
//                props.put("mail.smtp.auth", "true");
//                props.put("mail.smtp.starttls.enable", "true");
//                props.put("mail.smtp.host", "smtp.gmail.com");
//                props.put("mail.smtp.port", "587");
//                Session session_mail = Session.getInstance(props,
//                new javax.mail.Authenticator() {
//                   @Override
//                   protected PasswordAuthentication getPasswordAuthentication() {
//                     return new PasswordAuthentication(username_mail, password);
//                   }
//                });
//                try {
//                  Message message = new MimeMessage(session_mail);
//                  message.setHeader("Content-Type", "text/plain; charset=UTF-8");
//                  message.setFrom(new InternetAddress(username_mail));
//                  message.setRecipients(Message.RecipientType.TO,
//                  InternetAddress.parse(to));
//                  message.setSubject(subject);
//                  message.setContent(text, "text/html; charset=utf-8");
//                  Transport.send(message);
//                } catch (MessagingException e) {
//                  throw new RuntimeException(e);
//                }

        } else {
                url = "/resetpassword.jsp";

        }
        RequestDispatcher rd = getServletContext()
                        .getRequestDispatcher(url);
        rd.forward(request, response);
    } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("/resetpassword.jsp");
        }
    }

}
