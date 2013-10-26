package ims.business;

import java.util.List;

import ims.data.Administration;
import ims.data.Company;
import ims.data.Student;
import ims.data.StudentCompany;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

public class AdministatingDataSession {
	
	
	private SessionFactory sessionFactory;
	
	
	public void startNewInternshipPeriod(Administration adminData)
	{
		
		//to this method use first have to file with data 
		
		Session session = getSessionFactory().openSession();
		String SQL_QUERY = "from Administration";
		Query query = session.createQuery(SQL_QUERY);
		List<Administration> list = ((org.hibernate.Query) query).list();
		if(list.isEmpty())
		{
			Session session3 = getSessionFactory().openSession();
			session3.beginTransaction();
			session3.save(adminData);
			session3.beginTransaction().commit();
			session3.close();

			
		}
		else
		{
			Session session2 = getSessionFactory().openSession();		
			session2.beginTransaction();		
			session2.update(adminData);
			session2.getTransaction().commit();
			session2.close();
			
		}
		

/*		
		System.out.println("fdfdfdfdfdfdfdf");
		Session session4 = getSessionFactory().openSession();
		String SQL_QUERY2 = "from Company";
		Query query2 = session4.createQuery(SQL_QUERY2);
		List<Company> list2 = ((org.hibernate.Query) query2).list();

		
		System.out.println(list2.size()+"list2 fddfdff");
		
		for(int i=0;i<list2.size();i++)
		{
			Company company=list2.get(i);
			
			company.setReceiveCv(true);
			
			Session session5 = getSessionFactory().openSession();		
			session5.beginTransaction();		
			session5.update(company);			
			session5.getTransaction().commit();
			session5.close();
			
		}*/
		
		
		
		

		
	}
	
	public void stopInternshipPeriod()
	{
		Session session = getSessionFactory().openSession();
		String SQL_QUERY = "from Administration";
		Query query = session.createQuery(SQL_QUERY);
		List<Administration> list = ((org.hibernate.Query) query).list();
		if(list.isEmpty())
		{
			
		}
		else
		{
			Session session2 = getSessionFactory().openSession();		
			session2.beginTransaction();		
			session2.delete(list.get(0));
			session2.getTransaction().commit();
			session2.close();
			
			Session session3 = getSessionFactory().openSession();
			String SQL_QUERY2 = "from StudentCompany";
			Query query2 = session3.createQuery(SQL_QUERY2);
			List<StudentCompany> list2 = ((org.hibernate.Query) query2).list();
			
//			for(int i=0;i<list2.size();i++)
//			{
//				Session session4 = getSessionFactory().openSession();		
//				session4.beginTransaction();		
//				session4.delete(list.get(i));
//				session4.getTransaction().commit();
//				session4.close();
//				
//			}
			
		}
		
	}


	
	//getters and setters
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}


	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	
	

}
