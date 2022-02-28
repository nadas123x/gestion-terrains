package contact;


public class Contact {
	
	private String nom, prenom, email;
	private String message;
	
	public Contact(String nom, String prenom, String email, String message) {
		super();
		this.nom = nom;
		this.prenom = prenom;
		this.email = email;
		this.message = message;
	}

	public String getNom() {
		return nom;
	}
	
	public void setNom(String nom) {
		this.nom = nom;
	}
	public String getPrenom() {
		return prenom;
	}
	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getmessage() {
		return message;
	}
	public void setmessage(String message) {
		this.message = message;
	}
	
	
}