  <%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.sql.*" %> 
        	   <link rel="stylesheet" type="text/css" href="login.css">

  <div class="col-sm-8">
            
                    <div class="form-body">
        <div class="row">
            <div class="form-holder">
                <div class="form-content">
                    <div class="form-items">
                     <table id="tbl-student" class="table table-responsive table-bordered" cellpadding ="0" width="100%">
                         <thead>
                   
                             <tr>
                                    <th><h1>Nom propriétaire &ensp; &ensp; <br></h1> <br></th>
                                    <th><h1>Date et lieu de vente  &ensp; &ensp; <br></h1><br></th>
                                    <th><h1>Description &ensp; &ensp; </h1><br></th>
                                    <th><h1>Prix &ensp; &ensp;</h1><br></th>
                                  
                             </tr>  
                          
                             <%   

                                Connection con;
                                PreparedStatement pst;
                                ResultSet rs;
        
                                Class.forName("com.mysql.jdbc.Driver");
                                con = DriverManager.getConnection("jdbc:mysql://localhost/jee","root","Marwa555");
                                
                                  String query = "select * from terrain";
                                  Statement st = con.createStatement();
                                  
                                    rs =  st.executeQuery(query);
                                    
                                        while(rs.next())
                                        {
                                            String id = rs.getString("id");
                                   %>
             
                             <tr>
                                 <td><%=rs.getString("sname") %></td>
                                 <td><%=rs.getString("date") %></td>
                                 <td><%=rs.getString("adresse") %></td>
                                 <td><%=rs.getString("prix") %></td>
                                 
                                 <td><a href="Update.jsp?id=<%=id%>">Modifier  <br></a></td>
                                 <td><a href="Delete.jsp?id=<%=id%>"> Supprimer</a></td>
                             </tr> 
                             
                             
                                <%
                                 
                                 }
                               %>
                             
                     </table>    
                 </div>
                       
        </div>
          </div>
             </div>
               </div>
