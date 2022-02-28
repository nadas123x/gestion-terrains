<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    	   <link rel="stylesheet" type="text/css" href="login.css">
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SL DevCode Registration</title>
</head>

<div class="form-body">
        <div class="row">
            <div class="form-holder">
                <div class="form-content">
                    <div class="form-items">
                        <h3></h3>
                        <p>S'inscrire</p>

	<form action="loginRegister" method ="post">
		
			<div class="col-md-12">

			<tr>
				<td>UserName :</td>
				<td><input type="text" name="username"></td>
			</tr>
			  </div>
			<div class="col-md-12">
			<tr>
				<td>Nom complet :</td>
				<td><input type="text" name="name"></td>
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
				<td>Retapez votre mot de passe:</td>
				<td><input type="password" name="password2"></td>
			</tr>
  </div>
  <div class="col-md-12">
			<tr>
				<td><input type="submit" name="submit" value="register"></td>
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