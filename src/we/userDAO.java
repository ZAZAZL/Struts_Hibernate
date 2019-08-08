package we;
import java.sql.Connection;
 
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import we.user;
  
public class userDAO implements DAO{
	private Session s;
  
    public userDAO() {
       
    }
    private void setCon(){
		if ( s == null) {
		  SessionFactory sf = new Configuration().configure().buildSessionFactory();
		    s = sf.openSession();
		}
	}
    public user get(String name) {
        String hsql = "from user u where u.name=?";
		// ≤È—Ø
		setCon();
		s.beginTransaction();
		
		Query q = s.createQuery(hsql);
		q.setString(0, name);
		List<user> list = q.list();
		
		s.getTransaction().commit();
		//≤È—ØΩ· ¯
		
		if(null == list) {
			return null;
		}
		if ( list.size() == 0) {
			return null;
		}
		
		return list.get(0);		
    }
}