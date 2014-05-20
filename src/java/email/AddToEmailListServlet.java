package email;

import business.Users;
import data.UsersIO;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import org.apache.catalina.User;


public class AddToEmailListServlet extends HttpServlet
{
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        //gets params from Form
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        
        // Create user Object
        User user = new User (firstName, lastName, email);
        
        //validate the params
        String message ="";
        String url = "";
        if(firstName.length() == 0 || lastName.length() == 0 || email.length() == 0)
        {
            message = "Please fill out all three text boxes.";
            url = "/index.jsp";
        }
        else
        {
            message = "";
            ServletContext context = getServletContext();
            String path = context.getRealPath("/WEB-INF/EmailList.txt");
            UserIO.addRecord(user,path);
            
            url = "/display_email_entry.jsp";
        }
        request.setAttribute("user",user);
        request.setAttribute("message",message);
        
        //forwards request and response to the view
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(url);
        dispatcher.forward(request,response);
    }
}
