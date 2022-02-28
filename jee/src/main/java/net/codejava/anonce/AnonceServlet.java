package net.codejava.anonce;
 
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Part;
 
@WebServlet("/uploadServlet")
@MultipartConfig(maxFileSize = 16177215)    // upload file's size up to 16MB
public class AnonceServlet extends HttpServlet {
  
	private static final long serialVersionUID = 1L;
	
    private String dbURL = "jdbc:mysql://localhost:3306/jee";
    private String dbUser = "root";
    private String dbPass = "Marwa555";
     
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        // gets values of text fields
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String poste = request.getParameter("poste");
         
        InputStream inputStream = null; 
         

        Part filePart = request.getPart("photo");
        if (filePart != null) {
        
            System.out.println(filePart.getName());
            System.out.println(filePart.getSize());
            System.out.println(filePart.getContentType());
             
          
            inputStream = filePart.getInputStream();
        }
         
        Connection conn = null; 
        String message = null;  
         
        try {
        	
            // connects to the database
        	
        	try {
    			Class.forName("com.mysql.jdbc.Driver");
    			conn = DriverManager.getConnection(dbURL, dbUser, dbPass);
    			 
    		} catch (ClassNotFoundException e) {
    		
    			e.printStackTrace();
        	}
 
            // Creer statement
            String sql = "INSERT INTO anonce (first_name, last_name, photo,poste) values (?, ?, ?,?)";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, firstName);
            statement.setString(2, lastName);
            statement.setString(4, poste);
             
            if (inputStream != null) {
                // fetches input stream of the upload file for the blob column
                statement.setBlob(3, inputStream);
            }
 
            // envoyer le statement à notre bdd.
            int row = statement.executeUpdate();
            if (row > 0) {
                message = ".";
            }
        } catch (SQLException ex) {
            message = "ERROR: " + ex.getMessage();
            ex.printStackTrace();
        } finally {
        	
        }
            if (conn != null) {
                // Fermer notre bdd
                try {
                    conn.close();
                } catch (SQLException ex) {
                    ex.printStackTrace();
                }
            }
            // sets the message in request scope
            request.setAttribute("Message", message);
             
            // forwards to the message page
            getServletContext().getRequestDispatcher("/Message.jsp").forward(request, response);
        }
    }
