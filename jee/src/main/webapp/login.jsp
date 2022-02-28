<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	   <link rel="stylesheet" type="text/css" href="login.css">
	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
</head>
<div class="form-body">
        <div class="row">
            <div class="form-holder">
                <div class="form-content">
                    <div class="form-items">
                        <h3></h3>
                        <p>Se connecter</p>


	<form action="loginRegister" method="post">
		

			<tr>
				<td><h3 style="color: red;">${message}</h3>
					<h3 style="color: green;">${successMessage}</h3></td>
				<td></td>
			</tr>

 <div class="col-md-12">
			<tr>
				<td>Username:</td>
				<td><input type="text" name="username"></td>
			</tr>
			   </div>
 <div class="col-md-12">
			<tr>
				<td>Mot de passe:</td>
				<td><input type="password" name="password1"></td>
			</tr>
			   </div>
 <div class="col-md-12">
			<tr>
				<td><input type="submit" name="submit" value="login"></td>
				<td><a href="register.jsp">Inscription</a></td>
			</tr>
		   </div>
	</form>
                </div>
    </div>
                </div>
            </div>
        </div>
</body>
</html>