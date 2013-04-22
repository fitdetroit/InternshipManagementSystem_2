package ims.business;

import ims.data.Application;
import ims.data.StudentCompany;
import ims.data.User;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

public class UpdateApplication {
	
	private SessionFactory sessionFactory;
	
	
	
	public void UpdateStateToInterview(String studentUserName,String companyUserName)
	{
		StudentCompany studentCompany = new StudentCompany();
		
		studentCompany.setStudentId(studentUserName);
		studentCompany.setCompanyId(companyUserName);
		
		
		
		Session session2 = getSessionFactory().openSession();
		session2.beginTransaction();
		Application application = (Application)session2.get(Application.class, studentCompany);
		
		application.setState("interview");
		session2.merge(application);
		session2.getTransaction().commit();
		session2.close();
		
	}
	
	
	
	
	
	
	
	
	
	//getters and setters

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

}
