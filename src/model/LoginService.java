package model;

public class LoginService {

	public boolean check(LoginForm loginform) {

		if(loginform.getPassword().equals("qwer")) {
			return true;
		}
		return false;
	}
}
