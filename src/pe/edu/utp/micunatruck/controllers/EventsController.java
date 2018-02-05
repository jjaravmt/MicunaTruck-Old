package pe.edu.utp.micunatruck.controllers;

import pe.edu.utp.micunatruck.models.EventService;
import pe.edu.utp.micunatruck.models.Event;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "EventsController", urlPatterns = "/events")
public class EventsController extends HttpServlet {

    private Connection connection;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest("Post", request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest("Get", request, response);
    }

    private void processRequest(String method, HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        String action = request.getParameter("action");
        String url = "index.jsp";

        if(method.equals("Get") && action == null) action = "index";
        if(method.equals("Post") && action.equalsIgnoreCase("index")) return;
        if(method.equals("Get") && action.equalsIgnoreCase("create"))  return;
        if(method.equals("Get") && action.equalsIgnoreCase("update")) return;

        EventService service = new EventService();
        service.setConnection(getConnection());

        // action = index, method = Get
        if(action.equalsIgnoreCase("index"))
        {
            List<Event> events = service.findAllEvents();
            request.setAttribute("events", events);
            url = "listEvents.jsp";
        }
    }

    private Connection getConnection() {
        if(connection == null) {
            try {
                InitialContext ctx = new InitialContext();
                DataSource dataSource = (DataSource)ctx.lookup("jdbc/MySQLDataSourceMicunaTruck");
                connection = dataSource.getConnection();

            } catch (NamingException | SQLException e) {
                e.printStackTrace();
            }
        }
        return  connection;
    }
}
