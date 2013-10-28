package ims.business;

import ims.data.Support;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

public class SupportDataSession {
	

	private SessionFactory sessionFactory;

	public void saveSupportMessageInDb(Support support)
	{
		Session session = getSessionFactory().openSession();
		session.beginTransaction();
		session.save(support);
		session.beginTransaction().commit();
		session.close();
		
	}
	
	
	
	
	
	
	//getters and setters
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	

}
