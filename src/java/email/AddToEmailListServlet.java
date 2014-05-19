package email;

import business.Users;
import data.UsersIO;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;


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
        
    }
}