package murach.survey;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import murach.user.User;
import murach.info.*;

public class SurveyServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, 
                          HttpServletResponse response)
                          throws ServletException, IOException {
        
        // Lấy dữ liệu từ form
        String firstName   = request.getParameter("firstName");
        String lastName    = request.getParameter("lastName");
        String email       = request.getParameter("email");
        String dob         = request.getParameter("dob");
        String heardFrom   = request.getParameter("heardFrom");
        String wantsUpdates = request.getParameter("wantsUpdates"); 
        String emailOK     = request.getParameter("emailOK"); 
        String contactVia  = request.getParameter("contactVia");

        User user = new User(firstName, lastName, email, dob);
        Info info = new Info(heardFrom, wantsUpdates, emailOK, contactVia);
        String url = "thanks.jsp";
        request.setAttribute("user", user);
        request.setAttribute("info", info);
        
        RequestDispatcher dispatcher = request.getRequestDispatcher(url);
        dispatcher.forward(request, response);
    }
}
