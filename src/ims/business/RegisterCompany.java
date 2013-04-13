package ims.business;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import ims.data.Company;
import ims.data.User;

public class RegisterCompany {
	
	
	private SessionFactory sessionFactory;
	
	
	
	public void saveCompany(Company company,User user)
	{
		Session session = getSessionFactory().openSession();
		session.beginTransaction();
		session.save(company);
		session.beginTransaction().commit();
		session.close();
		
		
		Session session2 = getSessionFactory().openSession();
		session2.beginTransaction();
		session2.save(user);
		session2.beginTransaction().commit();
		session2.close();
		
	}

	

	
	
	
	
	
	
	// getters and setters
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}


}
