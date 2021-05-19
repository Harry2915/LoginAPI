package com.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.model.RegistrationModel;

public class LoginDao {
	
	public boolean getDetails(String email) {
		RegistrationModel model = new RegistrationModel();
		 Configuration con = new Configuration().configure().addAnnotatedClass(RegistrationModel.class);
		    
	     SessionFactory sf=con.buildSessionFactory();
	    Session session=sf.openSession();
	    Transaction tr = session.beginTransaction();
		Query query = session.createQuery("from RegistrationModel where email= : email");
		query.setParameter("email", email);
		
		List list = query.list();
		if(list!=null)
			return true;
		
		return false;
		
	}

}
