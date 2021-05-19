import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class RegistrationDao {
	public RegistrationModel getData(String fname,String lname,String email, int contact,String password) {
RegistrationModel model=new RegistrationModel();

	
	
	 Configuration con = new Configuration().configure().addAnnotatedClass(RegistrationModel.class);
	    
     SessionFactory sf=con.buildSessionFactory();
    Session session=sf.openSession();
    Transaction tr = session.beginTransaction();
     model.setFname(fname);
     model.setLname(lname);
     model.setEmail(email);
     model.setContact(contact);
     model.setPassword(password);
     session.save(model);
    tr.commit();
    return model;
	}

}
