<%@page import="java.util.ArrayList"%>
    <%@ page import="java.io.*,java.util.*,java.sql.*"%>
        <%
String searchAbout = "";

if ((String) request.getParameter("search") != "") {
	searchAbout = (String) request.getParameter("search");
}

%>
            <html>

            <head>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
                <meta name="viewport" content="width=device-width, initial-scale=1" />
                <meta http-equiv="X-UA-Compatible" content="IE=edge" />
                <meta name="author" content="colorlib.com">
                <link href="https://fonts.googleapis.com/css?family=Righteous&display=swap" rel="stylesheet">

                <link href="rech.css" rel="stylesheet" />
                <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.1/css/bootstrap.min.css" integrity="sha512-T584yQ/tdRR5QwOpfvDfVQUidzfgc2339Lc8uBDtcp/wYu80d7jwBgAxbyMh0a9YM9F8N3tdErpFI8iaGx6x5g==" crossorigin="anonymous" referrerpolicy="no-referrer"
                />
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>

                <style>
                    @import url('https://fonts.googleapis.com/css2?family=Montserrat:wght@200&family=Smooch&family=Vujahday+Script&display=swap');
                    h1 {
                        text-align: center;
                        font-family: 'Montserrat', sans-serif;
                        font-weight: bold;
                    }
                </style>
                <title>Resultat de recherche</title>
            </head>

            <body>


                <div class="s007">

                    <form>
                        <div class="inner-form">

                            <div class="basic-search">
                                <div class="input-field">
                                    <div class="icon-wrap">
                                        <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="20" height="20" viewBox="0 0 20 20">
                  <path
									d="M18.869 19.162l-5.943-6.484c1.339-1.401 2.075-3.233 2.075-5.178 0-2.003-0.78-3.887-2.197-5.303s-3.3-2.197-5.303-2.197-3.887 0.78-5.303 2.197-2.197 3.3-2.197 5.303 0.78 3.887 2.197 5.303 3.3 2.197 5.303 2.197c1.726 0 3.362-0.579 4.688-1.645l5.943 6.483c0.099 0.108 0.233 0.162 0.369 0.162 0.121 0 0.242-0.043 0.338-0.131 0.204-0.187 0.217-0.503 0.031-0.706zM1 7.5c0-3.584 2.916-6.5 6.5-6.5s6.5 2.916 6.5 6.5-2.916 6.5-6.5 6.5-6.5-2.916-6.5-6.5z"></path>
                </svg>
                                    </div>


                                    <div class="result-count">
                                        <span> </span>
                                    </div>
                                </div>
                            </div>
                            <div class="advance-search" style="width: 100% !important;">
                                <div style="max-height: 500px; overflow: scroll; width: 100%">
                                    <%
						String driver = "com.mysql.jdbc.Driver";
						String con = "jdbc:Mysql://localhost:3306/jee";
						String req = "";
						if ((String) request.getParameter("search") != "") {

							req = "select nom_propri,description,ville,prix,image from offres where ville = ? ";
						} 
						
						try {
							// étape 1: charger la classe de driver
							Class.forName(driver);

							// étape 2: créer l'objet de connexion
							Connection conn = DriverManager.getConnection(con, "root", "Marwa555");

							// étape 3: créer l'objet statement

							PreparedStatement stmt = conn.prepareStatement(req);
							if (searchAbout != "") {

								stmt.setString(1, searchAbout);//remplissage
							}

							ResultSet res = stmt.executeQuery();
						
							if (res.next()) {
								do {

							System.out.println("La connexion a était bien établit!!");

							String nom_propri = res.getString(1);
							String description = res.getString(2);
							String ville = res.getString(3);
							String prix = res.getString(4);
							String imageUrl = res.getString(5);

							out.print(
									"<center> <div class='m-4 '> <div class='card' style='width: 500px; border-color: black !important'> <div class='row g-0'> <div class='col-sm-5' style='border-radius: 50% !important; width: 35%'> <img src="
											+ imageUrl
											+ " class='card-img-top h-100' alt='...'> </div> <div class='col-sm-7'> <div class='card-body'>");

							out.print("<h4 class='card-title'>" + nom_propri + "</h4>"
									+ "<p class='card-text'><b style='color:#4a6842'>Description :</b> " + description
									+ "<br> <b style='color:#4a6842'>Ville : </b>" + ville + "<br><b style='color:#4a6842'>prix : </b>"
									+ prix + "<br></p>" + "<a href='#' class='btn btn-primary stretched-link'> Détails</a>"
									+ "</td></tr></div> </div> </div> </center>");

								} while (res.next());

							} else {
							}
							// étape 5: fermez l'objet de connexion
							conn.close();
						} catch (Exception e) {
							System.out.println(e);
						}
						%>


                                </div>
                            </div>
                    </form>
                    </div>
                    <script src="js/extention/choices.js"></script>
                    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
                    <script src="js/extention/choices.js"></script>
                    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
            </body>

            </html>