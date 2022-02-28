<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <link rel="stylesheet" type="text/css" href="contact.css">
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

</head>
<body>
    
    
        <div class="form-body">
        <div class="row">
            <div class="form-holder">
                <div class="form-content">
                    <div class="form-items">
                        <h3>Vendez vos terrains en un seul clic!</h3>
                        <p>Veuillez remplir ce formulaire</p>
        <form method="post" action="uploadServlet" enctype="multipart/form-data">
            <table border="0">
                <tr>
                    <td>Nom: </td>
                    <td><input type="text" name="firstName" size="50"/></td>
                </tr>
                <tr>
                    <td>Prénom: </td>
                    <td><input type="text" name="lastName" size="50"/></td>
                </tr>
                <tr>
                    <td>Images de votre terrain : </td>
                    <td><input type="file" name="photo" size="50"/></td>
                </tr>
                  <tr>
                    <td> Description: </td>
                    <td><textarea type="text" name="poste" size="50" placeholder=""> </textarea></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" value="Save">
                    </td>
                </tr>
            </table>
        </form>
               </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>