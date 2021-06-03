package com.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.model.RegistrationModel;

import net.sf.ehcache.hibernate.HibernateUtil;

public class ForgotPassDao {

	 Configuration con = new Configuration().configure().addAnnotatedClass(RegistrationModel.class);
	    
   SessionFactory sf=con.buildSessionFactory();
  Session session=sf.openSession();
  Transaction tr = session.beginTransaction();
  
  public boolean resetPass(String pass , String email) {
		Query query = session.createQuery("UPDATE RegistrationModel set password = :pass "  + 
	             "WHERE email = :email");
		query.setParameter("pass", pass);
		query.setParameter("email", email);
	  
	  int result =query.executeUpdate();
	System.out.println(pass+" "+email);
		System.out.println(result);
		if(result==1)
			return true;
		
		return false;

  }
}
