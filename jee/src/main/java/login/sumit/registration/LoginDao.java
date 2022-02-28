package login.sumit.registration;


public interface LoginDao {
	
	public int insertLogin(Login c);
	public Login getLogin(String username, String pass);

}

