<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <link rel="stylesheet" type="text/css" href="signin.css">
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<div class="title-box">

                <!-- titre pour ma page -->
                <h1>Données envoyées avec succés!</h1>
                <!-- slogan pour ma page -->
               
            </div>
</head>
<body>
    <center>
        <h3><%=request.getAttribute("Message")%></h3>
    </center>
</body>
</html>