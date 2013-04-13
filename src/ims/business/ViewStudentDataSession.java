package ims.business;

import ims.data.Student;

import java.util.List;

import org.hibernate.SessionFactory;


import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
public class ViewStudentDataSession {
	
	SessionFactory sessionFactory;
	
	public List<Student> allStudentToAdmin()
	{
		Session session = getSessionFactory().openSession();
		String SQL_QUERY = "from Student";
		Query query = session.createQuery(SQL_QUERY);
		List<Student> list = ((org.hibernate.Query) query).list();

		return list;
		
	}
	
	
	public List<Student> viewStudentToStudent(String userName)
	{
		Session session = getSessionFactory().openSession();
		String SQL_QUERY = "from Student as stu  where stu.studentUserName='"+userName+"'";
		Query query = session.createQuery(SQL_QUERY);
	
		List<Student> list = ((org.hibernate.Query) query).list();
		session.close();

		return list;
		
	}

	
	
	
	//getters and setters
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

}
