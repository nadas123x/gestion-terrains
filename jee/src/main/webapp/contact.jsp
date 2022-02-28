 <link rel="stylesheet" type="text/css" href="contact.css">

<div class="form-body">
        <div class="row">
            <div class="form-holder">
                <div class="form-content">
                    <div class="form-items">
                        <h3>Contactez nous!</h3>
                        <p>Veuillez remplir ce formulaire</p>
                        
                        <form action="ContactServlet" method="post">
                        
                      

                            <div class="col-md-12">
                               <input class="form-control" type="text" name="nom" placeholder="Nom " required>
                            
                            </div>

                            <div class="col-md-12">
                                <input class="form-control" type="Text" name="prenom" placeholder="Prénom" required>
                              
                            </div>



                           <div class="col-md-12">
                              <input class="form-control" type="Email" name="email" placeholder="Email" required>
                               
                           </div>
                           <div class="col-md-12">
                              <input class="form-control" type="Text" name="message" placeholder="Text" required>
                               
                           </div>


                          

                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" value="" id="invalidCheck" required>
                          <label class="form-check-label">Je confirme que les informations saisies sont correctes</label>
                        </div>
                  

                            <div class="form-button mt-3">
                                <button id="submit" type="submit" class="btn btn-primary">Envoyez</button>
                            </div>
                        </form>
                                             
                    </div>
                </div>
            </div>
        </div>
    </div>