package ims.business;

import ims.data.Student;
import ims.data.User;

import java.util.Iterator;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

public class CheckUserToLogin {

	private SessionFactory sessionFactory;
	
	
/*// this method is used to check student user name and password in the database
	public String findStudent(String userName, String password) {
		

		Session session = getSessionFactory().openSession();
		// bilow 3 codes are befor used codes for login but it can attack by mysql injection
		//String hql = " from User u where u.userName='" + userName + "' and u.password='" + password + "'and u.type='s'";
		//Iterator<User> it = ((org.hibernate.Query) query).iterate();
		//List<User> list = ((org.hibernate.Query) query).list();
		
		String hql = " from User u where u.userName=? and u.password=? and u.type='s'";
		
		Query query = session.createQuery(hql);
		

		List<User> list = query.setString(0, userName).setString(1, password).list();

		if (list.size() > 0) {

			String hql2 = " from Student st where st.studentUserName='" + userName + "'";
			Query query2 = session.createQuery(hql2);
			Iterator<Student> it2 = ((org.hibernate.Query) query2).iterate();
			List<Student> list2 = ((org.hibernate.Query) query2).list();
			if (list2.size() > 0) {
				session.close();

				return "registed";
			}

			return "notRegisted";
		}
		session.close();
		return "error";
	

	}
	
	// this method is used to check company user name and password in the database	
	public String findCompany(String userName, String password)
	{
		

		Session session = getSessionFactory().openSession();
		//befor code privent mysql injections
		//String hql = " from User u where u.userName='" + userName + "' and u.password='" + password + "' and u.type='c'";
		//Iterator<User> it = ((org.hibernate.Query) query).iterate();
		//List<User> list = ((org.hibernate.Query) query).list();
		String hql = " from User u where u.userName=? and u.password=? and u.type='c'";
		Query query = session.createQuery(hql);
		

		List<User> list = query.setString(0, userName).setString(1, password).list();

		if (list.size() > 0) {

			String hql2 = " from Company cm where cm.companyUserName='" + userName + "'and cm.allowed='1'";
			Query query2 = session.createQuery(hql2);
			Iterator<Student> it2 = ((org.hibernate.Query) query2).iterate();
			List<Student> list2 = ((org.hibernate.Query) query2).list();
			if (list2.size() > 0) {
				session.close();

				return "allowed";
			}

			return "notallowed";
		}
		session.close();
		return "error";
		
	}
	
	// this method is used to check admin user name and password in the database
	public String findAdmin(String userName, String password)
	{
		Session session = getSessionFactory().openSession();
		//befor code privent mysql injections
		//String hql = " from User u where u.userName='" + userName + "' and u.password='" + password + "' and u.type='a'";
		//Iterator<User> it = ((org.hibernate.Query) query).iterate();
		//List<User> list = ((org.hibernate.Query) query).list();
		String hql = " from User u where u.userName=? and u.password=? and u.type='a'";
		Query query = session.createQuery(hql);
		

		List<User> list = query.setString(0, userName).setString(1, password).list();
		
		if (list.size() > 0) 
		{
			return "success";
		}
		else 
		{
			return "error";
		}
		
	}*/
	
	
	public String findUser(String userName,String password)
	{
		Session session = getSessionFactory().openSession();
		String hql = " from User u where u.userName=? and u.password=? ";
		Query query = session.createQuery(hql);
		

		List<User> list = query.setString(0, userName).setString(1, password).list();
		if(list.size()>0)
		{
			if(list.get(0).getType()=='a')
			{
				return "admin";
				
			}
			else if(list.get(0).getType()=='s')
			{
				

				String hql2 = " from Student st where st.studentUserName='" + userName + "'";
				Query query2 = session.createQuery(hql2);
				List<Student> list2 = ((org.hibernate.Query) query2).list();
				if (list2.size() > 0) {
					session.close();

					return "registedStudent";
				}

				return "notRegistedStudent";
				
			}
			else 
			{
				String hql2 = " from Company cm where cm.companyUserName='" + userName + "'and cm.allowed='1'";
				Query query2 = session.createQuery(hql2);
				List<Student> list2 = ((org.hibernate.Query) query2).list();
				if (list2.size() > 0) {
					session.close();

					return "allowedCompany";
				}

				return "notallowedCompany";
				
			}
			
		}
		else
		{
			return "error";
			
		}
		
	}
	
	
	
	
	
	
	
	

	// getters and setters

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

}
