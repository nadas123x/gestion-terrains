<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.sql.*" %> 
<% 

    if(request.getParameter("submit")!=null)
    {
        String sname = request.getParameter("sname");
        String prix = request.getParameter("prix");
        String adresse = request.getParameter("adresse");
        String telephone = request.getParameter("telephone");

        
        Connection con;
        PreparedStatement pst;
        ResultSet rs;
        
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost/jee","root","Marwa555");
        pst = con.prepareStatement("insert into parent (sname,prix,adresse,telephone)values(?,?,?,?)");
        pst.setString(1, sname);
        pst.setString(2, prix);
        pst.setString(3, adresse);
        pst.setString(4, telephone);
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
                          <h1>Gestion des propriétaires des terrains </h1>
                <form  method="POST" action="#" > 
                    
                    <div alight="left">
                        <label class="form-label">Nom du propriétaire du terrain</label>
                        <input type="text" class="form-control" placeholder="" name="sname" id="sname" required >
                     </div>
                         
                    <div alight="left">
                        <label class="form-label">Prénom du propriétaire</label>
                        <input type="text" class="form-control" placeholder="" name="prix" id="prix" required >
                     </div>
                         
                     <div alight="left">
                        <label class="form-label">Email</label>
                        <textarea type="text" class="form-control" placeholder="" name="adresse" id="adresse" required ></textarea>
                     </div>
                      <div alight="left">
                        <label class="form-label">Téléphone</label>
                        <input type="text" class="form-control" placeholder="" name="telephone" id="telephone" required >
                     </div>
                         </br>
                         
                     <div alight="right">
                         <input type="submit" id="submit" value="submit" name="submit" class="btn btn-info">
                         <input type="reset" id="reset" value="reset" name="reset" class="btn btn-warning">
                         <button class="button"  >

  <div class="pattern">
    <div class="target inner bg1"></div>
  </div>
  <div class="text"> <a href="http://localhost:8080/jee/signin.jsp" >Quitter</a></div>
  
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