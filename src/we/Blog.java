package we;

public class Blog {
	private int id;
	private String title;
	private String content;
	private int userId;
	
	
public Blog() {
		
	}
	
	public int  getId(){
		return id;
	}
	public String  getTitle(){
		return title;
	}
	public String  getContent(){
		return content;
	}
	
	public int  getUserId(){
		return userId;
	}
	
	public void setId(int newId){
		this.id = newId;
		
	}

	public void setTitle(String title){
		this.title = title;
		
	}
	public void setContent(String cont){
		this.content = cont;
		
	}
	public void setUserId(int userid){
		this.userId = userid;
		
	}
}
