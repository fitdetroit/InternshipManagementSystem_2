package ims.business;

import ims.data.Company;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

public class ViewCompanyDataSession {
	
	
	SessionFactory sessionFactory;
	
	
	/// return list to student registration form - still available internship
	public List<String> remainingCompanyName()
	{
		Session session = getSessionFactory().openSession();
		String SQL_QUERY = "select companyName from Company as com  where com.allowed='1'";
		Query query = session.createQuery(SQL_QUERY);
		 List<String> list =  ((org.hibernate.Query) query).list();
		 list.add("NOT Select");
		session.close();

		return list;
		
	}
	
	
	public List<Company> allowedCompanyToAdmin()
	{
		Session session = getSessionFactory().openSession();
		String SQL_QUERY = "from Company as com  where com.allowed='1'";
		Query query = session.createQuery(SQL_QUERY);
		List<Company> list = ((org.hibernate.Query) query).list();
		session.close();

		return list;
		
	}
	
	
	public List<Company> notAllowedCompanyToAdmin()
	{
		Session session = getSessionFactory().openSession();
		String SQL_QUERY = "from Company as com  where com.allowed='0'";
		Query query = session.createQuery(SQL_QUERY);
		List<Company> list = ((org.hibernate.Query) query).list();
		session.close();

		return list;
		
	}
	
	
	public List<Company> viewCompanyToCompany(String userName)
	{
		Session session = getSessionFactory().openSession();
		String SQL_QUERY = "from Company as com  where com.companyUserName='"+userName+"'";
		Query query = session.createQuery(SQL_QUERY);
	
		List<Company> list = ((org.hibernate.Query) query).list();
		session.close();

		return list;
	}
	
	public List<Company> allowedCompanyToStudent()
	{
		Session session = getSessionFactory().openSession();
		String SQL_QUERY = "from Company as com  where com.allowed='1'";
		Query query = session.createQuery(SQL_QUERY);
		List<Company> list = ((org.hibernate.Query) query).list();
		session.close();

		return list;
		
	}
	
	public List<Company> allowedCompanyToCompany()
	{
		Session session = getSessionFactory().openSession();
		String SQL_QUERY = "from Company as com  where com.allowed='1'";
		Query query = session.createQuery(SQL_QUERY);
		List<Company> list = ((org.hibernate.Query) query).list();
		session.close();

		return list;
		
	}
	
	public List<Company> FullProfileToStudent(String userName)
	{
		Session session = getSessionFactory().openSession();
		String SQL_QUERY = "from Company as com  where com.companyUserName='"+userName+"'";
		Query query = session.createQuery(SQL_QUERY);
	
		List<Company> list = ((org.hibernate.Query) query).list();
		session.close();

		return list;
	}
	
	public List<Company> FullProfileToCompany(String userName)
	{
		Session session = getSessionFactory().openSession();
		String SQL_QUERY = "from Company as com  where com.companyUserName='"+userName+"'";
		Query query = session.createQuery(SQL_QUERY);
	
		List<Company> list = ((org.hibernate.Query) query).list();
		session.close();

		return list;
	}
	
	public List<Company> FullProfileToAdmin(String userName)
	{
		Session session = getSessionFactory().openSession();
		String SQL_QUERY = "from Company as com  where com.companyUserName='"+userName+"'";
		Query query = session.createQuery(SQL_QUERY);
	
		List<Company> list = ((org.hibernate.Query) query).list();
		session.close();

		return list;
	}
	
	public List<Company> CvRecivedCompanyToAdmin()
	{
		Session session = getSessionFactory().openSession();
		String SQL_QUERY ="from Company as com  where com.receiveCv='1'and com.allowed='1'";
		Query query = session.createQuery(SQL_QUERY);
	
		List<Company> list = ((org.hibernate.Query) query).list();
		session.close();

		return list;
	}
	
	public List<Company> CvNotRecivedCompanyToAdmin()
	{
		Session session = getSessionFactory().openSession();
		String SQL_QUERY ="from Company as com  where com.receiveCv='0'and com.allowed='1'and com.state='0'";
		Query query = session.createQuery(SQL_QUERY);
	
		List<Company> list = ((org.hibernate.Query) query).list();
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
