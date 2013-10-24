package ims.business;
import org.hibernate.Query;
import org.hibernate.Session;

import ims.data.StudentCompany;

import java.util.Iterator;
import java.util.List;

import org.hibernate.SessionFactory;

public class MenuManageDataSession {
	
	private SessionFactory sessionFactory;
	
	
	
	public String companyStateSummary(String compUserName)
	{
		String companyStateDetails;
		Session session = getSessionFactory().openSession();
		
		String hql1 = " from StudentCompany su where su.pk.company.companyUserName='" + compUserName + "' ";
		String hql2 = " from StudentCompany su where su.pk.company.companyUserName='" + compUserName + "' and su.state='pending' ";
		String hql3 = " from StudentCompany su where su.pk.company.companyUserName='" + compUserName + "' and su.state='interview' ";
		String hql4 = " from StudentCompany su where su.pk.company.companyUserName='" + compUserName + "' and su.state='Selected' ";
		
		
		Query query = session.createQuery(hql1);		
		List<StudentCompany> list = ((org.hibernate.Query) query).list();
		
		Query query2 = session.createQuery(hql2);			
		List<StudentCompany> list2 = ((org.hibernate.Query) query).list();
		
		Query query3= session.createQuery(hql3);			
		List<StudentCompany> list3 = ((org.hibernate.Query) query).list();
		
		Query query4 = session.createQuery(hql4);			
		List<StudentCompany> list4 = ((org.hibernate.Query) query).list();
		
		
		companyStateDetails =String.valueOf(list.size());
		companyStateDetails=companyStateDetails.concat(",");
		
		companyStateDetails=companyStateDetails.concat(String.valueOf(list2.size()));
		companyStateDetails=companyStateDetails.concat(",");
		
		companyStateDetails=companyStateDetails.concat(String.valueOf(list3.size()));
		companyStateDetails=companyStateDetails.concat(",");
		
		companyStateDetails=companyStateDetails.concat(String.valueOf(list4.size()));
		//companyStateDetails.concat(",");
		
		System.out.println(companyStateDetails);
	   return companyStateDetails;	
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
//getters and setters
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

}
