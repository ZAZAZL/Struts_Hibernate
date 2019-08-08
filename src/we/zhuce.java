package we;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

  
public class zhuce {
	private Session s;
	int ret=0;
	  
    public zhuce() {
       
    }
    private void setCon(){
		if ( s == null) {
		  SessionFactory sf = new Configuration().configure().buildSessionFactory();
		    s = sf.openSession();
		}
	}
	public int set(user user1 ){
		try{
				setCon();
				s.beginTransaction();
				s.save(user1);
				s.getTransaction().commit();
				s.close();
                return ret=1;
        }
		catch(Exception e){
			s.close();
			return ret=0;
		}
	}
}
