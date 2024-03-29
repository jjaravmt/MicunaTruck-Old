package pe.edu.utp.micunatruck.controllers;

import pe.edu.utp.micunatruck.models.*;

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
//Control de Usuarios
@WebServlet(name = "UsersController", urlPatterns = "/users")
public class UsersController extends HttpServlet {

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

        MicunaTruckService service = new MicunaTruckService();
        service.setConnection(getConnection());

        if(action.equalsIgnoreCase("signin"))
            url = "loginUser.jsp";

        // action = auth, method = Get
        if(action.equalsIgnoreCase("auth"))
        {
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            User user = service.findUserByEmailAndPassword(email, password);
            if(user != null)
            {
                List<Event> events = service.findAllEvents();

                request.setAttribute("events", events);
                request.setAttribute("user", user);
                url = "homeUser.jsp";
            }
            else{
                request.setAttribute("msgAuth", "Email or Password is incorrect.");
                url = "loginUser.jsp";
            }
        }

        // action = index, method = Get
        if(action.equalsIgnoreCase("index"))
        {
            List<User> users = service.findAllUsers();
            request.setAttribute("users", users);
            url = "listUsers.jsp";
        }

        // action = show, method = Get
        if(action.equalsIgnoreCase("show"))
        {
            int id = Integer.parseInt(request.getParameter("id"));//ShowUser
            User user = service.findUserById(id);
            request.setAttribute("user", user);
            url = "showUser.jsp";
        }

        // action = new , method = Get
        if(action.equalsIgnoreCase("new")) {
            request.setAttribute("usersType", service.findAllUsersType());
            url = "newUser.jsp";
        }

        // action = create, method = Post
        if(action.equalsIgnoreCase("create")) {
            String name = request.getParameter("name");
            String lastName = request.getParameter("lastName");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            int userType = Integer.parseInt(request.getParameter("userType"));

            User user = service.createUser(userType, name, lastName, "",
                    "", "", "", "",
                    email, password, true);

            request.setAttribute("users", service.findAllUsers());

            url = "listUsers.jsp";
            //url = "homeUsers.jsp";
        }

        // action = edit, method = Get
        if(action.equalsIgnoreCase("edit")) {
            int id = Integer.parseInt(request.getParameter("id"));
            request.setAttribute("user", service.findUserById(id));
            url = "editUser.jsp";
        }

        // action = delete, method = Get
        if(action.equalsIgnoreCase("delete")) {
            int id = Integer.parseInt(request.getParameter("id"));
            boolean result = service.deleteUser(id);
            request.setAttribute("users", service.findAllUsers());
            url = "listUsers.jsp";
        }

        // action = update, method = Post
        if(action.equalsIgnoreCase("update")) {
            int id = Integer.parseInt(request.getParameter("id"));
            String name = request.getParameter("name");
            String lastName = request.getParameter("lastName");
            String email = request.getParameter("email");
            String password = request.getParameter("password");

            boolean result = service.updateUser(new User(id, 1, name, lastName, "",
                    "", "", "", "",
                    email, password, true));

            User user = service.findUserById(id);
            List<Event> events = service.findAllEvents();

            request.setAttribute("events", events);
            request.setAttribute("user", user);
            url = "homeUser.jsp";
        }

        request.getRequestDispatcher(url).forward(request, response);
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
