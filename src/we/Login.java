package we;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class Login extends ActionSupport {

	public String name;
	public String password;
	public String chknumber;
	
	public String getChknumber() {
		return chknumber;
	}

	public void setChknumber(String chknumber) {
		this.chknumber = chknumber;
	}

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
		Map<String, Object>	m=ActionContext.getContext().getSession();
		String a=(String)m.get("randomCode");
		userDAO userDAO1=new userDAO();
		user user2=userDAO1.get(getName());
		if (user2 == null)
			return "fail";
		else if(user2.getPassword().equals(getPassword())&&user2.getName().equals(getName())&&a.equals(getChknumber()))
		{
		    m.put("user",user2);
			return "success";
		}else
			return "fail";
	}

}