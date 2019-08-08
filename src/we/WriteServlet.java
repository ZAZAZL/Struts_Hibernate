package we;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class WriteServlet extends ActionSupport {

	public String blog_title;
	public String blog_content;

	public String getBlog_title() {
		return blog_title;
	}

	public void setBlog_title(String blogTitle) {
		blog_title = blogTitle;
	}

	public String getBlog_content() {
		return blog_content;
	}

	public void setBlog_content(String blogContent) {
		blog_content = blogContent;
	}

	public String execute()throws Exception{
		user u=(user)ActionContext.getContext().getSession().get("user");
		int a=0;
		BlogDAO b=new BlogDAO();
		Blog blog=new Blog();
		blog.setTitle(getBlog_title());
		blog.setContent(getBlog_content());
		blog.setUserId(u.id);
		a=b.add(blog);
		if(a==0)
			return "fail";
		else
			return "success";
	}

}