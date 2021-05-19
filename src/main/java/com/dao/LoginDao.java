package com.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.model.RegistrationModel;

public class LoginDao {
	
	public boolean checkEmail(String email) {
		RegistrationModel model = new RegistrationModel();
		 Configuration con = new Configuration().configure().addAnnotatedClass(RegistrationModel.class);
		    
	     SessionFactory sf=con.buildSessionFactory();
	    Session session=sf.openSession();
	    Transaction tr = session.beginTransaction();
		Query query = session.createQuery("from RegistrationModel where email= : email ");
		query.setParameter("email", email);
	
		
		List list = query.list();
		System.out.println(list);
		if(!list.isEmpty())
			return true;
		
		return false;
		
	}
	public boolean checkPass(String pass) {
		RegistrationModel model = new RegistrationModel();
		 Configuration con = new Configuration().configure().addAnnotatedClass(RegistrationModel.class);
		    
	     SessionFactory sf=con.buildSessionFactory();
	    Session session=sf.openSession();
	    Transaction tr = session.beginTransaction();
		Query query = session.createQuery("from RegistrationModel where password= : pass ");
		query.setParameter("pass", pass);
	
		
		List list = query.list();
		System.out.println(list);
		if(!list.isEmpty())
			return true;
		
		return false;
		
	}


}
