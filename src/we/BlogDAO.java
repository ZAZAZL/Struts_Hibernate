package we;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class BlogDAO implements BDAO {
	private Session s;
private Connection con;
int ret=0;
	
	public BlogDAO() {
	}
	
	private void setCon(){
		if ( s == null) {
			  SessionFactory sf = new Configuration().configure().buildSessionFactory();
			    s = sf.openSession();
			}
	}

	public int add(Blog blog) {
		// TODO Auto-generated method stub
        try {
        setCon();
        s.beginTransaction();
        s.save(blog);
        s.getTransaction().commit();
        s.close();
        return ret=1;
        } catch (Exception e) {
        	s.close();
            return ret=0;
        }
        
	}

	public void delete(Blog blog) {
		// TODO Auto-generated method stub
		
	}

	public Blog get(int blogId) {
		// TODO Auto-generated method stub
		return null;
	}

	 public List<Blog> list(int userId) {
	        String hsql = "from Blog u where u.userId=?";
	        setCon();
	        s.beginTransaction();
		
		Query q = s.createQuery(hsql);
		q.setInteger(0, userId);
		List<Blog> list = q.list();
		s.getTransaction().commit();
	        return list;
	    }

	public void update(Blog blog) {
		// TODO Auto-generated method stub
		
	}

}
