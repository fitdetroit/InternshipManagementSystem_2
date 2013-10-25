package ims.business;

import ims.data.Messages;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

public class HandleMassageDataSession {
	
	private SessionFactory sessionFactory;
	
	
	
	
	
	public void saveCompanyMessageInDb(Messages msg)
	{
		Session session = getSessionFactory().openSession();
		session.beginTransaction();
		session.save(msg);
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
