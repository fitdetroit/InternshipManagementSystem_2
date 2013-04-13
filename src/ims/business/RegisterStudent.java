package ims.business;


import ims.data.Company;
import ims.data.Student;
import ims.data.User;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

public class RegisterStudent {
	
	private SessionFactory sessionFactory;

	public void saveStudent(Student student)
	{
		Session session = getSessionFactory().openSession();
		session.beginTransaction();
		session.save(student);
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
