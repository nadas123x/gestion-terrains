<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %> 

<% 
    if(request.getParameter("submit")!=null)
    {
        String id = request.getParameter("id");
        String sname = request.getParameter("sname");
        String date = request.getParameter("date");
        String adresse = request.getParameter("adresse");
        String prix = request.getParameter("prix");
        
        Connection con;
        PreparedStatement pst;
        ResultSet rs;
        
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost/jee","root","Marwa555");
        pst = con.prepareStatement("update terrain set sname = ?,date = ?,adresse= ? ,prix= ? where id = ?");
        pst.setString(1, sname);
        pst.setString(2, date);
        pst.setString(3, adresse);
        pst.setString(4, prix);
        pst.setString(5, id);
     
        pst.executeUpdate();  
        %>
        
        <script>   
            alert("Modification avec succés!");           
       </script>
    <%             
    }

%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modification terrains</title> 
        
     
          <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
                <link rel="stylesheet" type="text/css" href="login.css">
        
        
        
    </head>
  
    <body>
 
               <div class="form-body">
            <div class="form-holder">
                <div class="form-content">
                    <div class="form-items">
                          <h1>Modification des terrains</h1>   <div class="form-body">
        
        
        <div class="row">
            <div class="col-sm-4">
                <form  method="POST" action="#" >
                    
                    <%    
                         Connection con;
                        PreparedStatement pst;
                        ResultSet rs;
        
                         Class.forName("com.mysql.jdbc.Driver");
                          con = DriverManager.getConnection("jdbc:mysql://localhost/jee","root","Marwa555");
                           
                          String id = request.getParameter("id");
                          
                        pst = con.prepareStatement("select * from terrain where id = ?");
                        pst.setString(1, id);
                        rs = pst.executeQuery();
                        
                         while(rs.next())
                         {
                    
                    %>
                    <div alight="left">
                        <label class="form-label">Nom propriétaire</label>
                        <input type="text" class="form-control" placeholder="Student Name" value="<%= rs.getString("sname")%>" name="sname" id="sname" required >
                     </div>
                         
                    <div alight="left">
                        <label class="form-label">Date de vente</label>
                        <input type="text" class="form-control" placeholder="date" name="date" value="<%= rs.getString("date")%>" id="date" required >
                     </div>
                         
                     <div alight="left">
                        <label class="form-label">Description</label>
                        <textarea type="text" class="form-control" placeholder="adresse" name="adresse" id="adresse" value="<%= rs.getString("adresse")%>" required ></textarea>
                     </div>
                       <div alight="left">
                        <label class="form-label">date</label>
                        <input type="text" class="form-control" placeholder="prix" name="prix" id="prix" value="<%= rs.getString("prix")%>" required >
                     </div>
                    
                    <% }  %>
                    
                    
                    
                         </br>
                         
                     <div alight="right">
                         <input type="submit" id="submit" value="submit" name="submit" class="btn btn-info">
                         <input type="reset" id="reset" value="reset" name="reset" class="btn btn-warning">
                     </div>  
                         
                         <div align="right">
                             
                             <p><a href="indexx.jsp">Retour</a></p>
                             
                             
                         </div>
  
                </form>
                            
           
        </div>
           </div>
          </div>
             </div>
               </div>
                
            </div>          
        </div>
  
    </body>
</html>