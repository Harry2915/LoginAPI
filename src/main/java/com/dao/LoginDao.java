package com.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.mindrot.jbcrypt.BCrypt;

import com.model.RegistrationModel;

public class LoginDao {
	RegistrationModel model = new RegistrationModel();
	 Configuration con = new Configuration().configure().addAnnotatedClass(RegistrationModel.class);
	    
    SessionFactory sf=con.buildSessionFactory();
   Session session=sf.openSession();
   Transaction tr = session.beginTransaction();
	
	public boolean checkEmail(String email) {

		Query query = session.createQuery("from RegistrationModel where email= : email ");
		query.setParameter("email", email);
	
		
		List list = query.list();
		System.out.println(list);
		if(!list.isEmpty())
			return true;
		
		return false;
		
	}
	public boolean checkPass(String pass, String email) {
		  RegistrationModel user = (RegistrationModel)session.createQuery("from RegistrationModel where email = :email").setString("email", email).uniqueResult();
		  
		  if(BCrypt.checkpw(pass, user.getPassword()))
              return true;
		  
          
//		Query query = session.createQuery("from RegistrationModel where password= : pass ");
//		query.setParameter("pass", pass);
//	
//		
//		List list = query.list();
//		System.out.println(list);
//		if(!list.isEmpty())
//			return true;
//		
		return false;
//		
	}


}
