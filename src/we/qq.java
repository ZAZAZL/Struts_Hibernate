package we;
import com.opensymphony.xwork2.ActionSupport;

public class qq extends ActionSupport {
	public String name;
	public String password;
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	public String execute()throws Exception{
		int a=0;
		zhuce zc=new zhuce();
		user user1=new user();
		user1.setName(getName());
		user1.setPassword(getPassword());
		a=zc.set(user1);
		if(a==0)
			return "fail";
		else
			return "success";
	}

}