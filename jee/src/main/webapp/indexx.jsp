
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.sql.*" %> 
<% 

    if(request.getParameter("submit")!=null)
    {
        String sname = request.getParameter("sname");
        String date = request.getParameter("date");
        String adresse = request.getParameter("adresse");
        String prix = request.getParameter("prix");

        
        Connection con;
        PreparedStatement pst;
        ResultSet rs;
        
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost/jee","root","Marwa555");
        pst = con.prepareStatement("insert into terrain (sname,date,adresse,prix)values(?,?,?,?)");
        pst.setString(1, sname);
        pst.setString(2, date);
        pst.setString(3, adresse);
        pst.setString(4, prix);
        pst.executeUpdate();  
        
        %> 
    <script>   
        alert("Terrain ajouté");     
    </script> 
    <%             
    }
   %>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
      
 <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>     
        	   <link rel="stylesheet" type="text/css" href="login.css">
        
           
    </head>
    <body>
      
       
     <div class="form-body">
        <div class="row">
            <div class="form-holder">
                <div class="form-content">
                    <div class="form-items">
                          <h1>Gestion des terrains agricoles</h1>
                <form  method="POST" action="#" > 
                    
                    <div alight="left">
                        <label class="form-label">Nom du propriétaire du terrain</label>
                        <input type="text" class="form-control" placeholder="" name="sname" id="sname" required >
                     </div>
                         
                    <div alight="left">
                        <label class="form-label">Date de vente</label>
                        <input type="text" class="form-control" placeholder="" name="date" id="date" required >
                     </div>
                         
                     <div alight="left">
                        <label class="form-label">Description</label>
                        <textarea type="text" class="form-control" placeholder="" name="adresse" id="adresse" required ></textarea>
                     </div>
                      <div alight="left">
                        <label class="form-label">Prix</label>
                        <input type="text" class="form-control" placeholder="" name="prix" id="prix" required >
                     </div>
                         </br>
                         
                     <div alight="right">
                         <input type="submit" id="submit" value="submit" name="submit" class="btn btn-info">
                         <input type="reset" id="reset" value="reset" name="reset" class="btn btn-warning">
                         <button class="button"  >

  <div class="pattern">
    <div class="target inner bg1"></div>
  </div>
  <div class="text"> <a href="http://localhost:8080/jee/index2.jsp" >Quitter</a></div>
  
</button>
  <button class="button"  >

  <div class="pattern">
    <div class="target inner bg1"></div>
  </div>
  <div class="text"> <a href="http://localhost:8080/jee/index.jsp" >Voir données</a></div>
  
</button>
                     </div>  
                         
                </form>
            </div>
            
           
        </div>
          </div>
             </div>
               </div>

    </body>
</html>