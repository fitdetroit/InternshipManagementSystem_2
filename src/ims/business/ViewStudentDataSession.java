package ims.business;

import ims.data.Application;
import ims.data.Company;
import ims.data.Student;
import ims.data.StudentCompany;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.SessionFactory;


import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
public class ViewStudentDataSession {
	
	SessionFactory sessionFactory;
	// to get student list to company

	


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

	
	public List<Student> appliedStudentToCompany(String userName)
	{
		 List<Student> students=new ArrayList<Student>();
	
		/// check company allowd and can access student cv
		Session session = getSessionFactory().openSession();
		String SQL_QUERY ="from Company as com  where com.companyUserName='"+userName+"' and com.receiveCv='1'and com.allowed='1'";
		Query query = session.createQuery(SQL_QUERY);
	
		List<Company> list = ((org.hibernate.Query) query).list();
		session.close();
		
		if(list.size()==0)
		{
			//System.out.println("its here");
			List<Student> list2 = null;
			return list2;
			
		}
		else
		{
		

			// get student cv
			Session session2 = getSessionFactory().openSession();
			String SQL_QUERY2 = "from Application as app  where app.studentCompany.companyId='"+userName+"'";
			Query query2 = session2.createQuery(SQL_QUERY2);
		
			List<Application> list3 = ((org.hibernate.Query) query2).list();
			session2.close();

/*			List<String> studentNames=null;
			for(int x=0;list3.get(x)!=null;x++)
			{
				//studentNames.add(x, list3.get(x).getStudentCompany().getStudentId());
				String name=list3.get(x).getStudentCompany().getStudentId();
				studentNames.add(name);
				
			}*/
						
			
			Session session3 = getSessionFactory().openSession();
			//for(int y=0;list3.get(y).getStudentCompany().getStudentId().length()!=0;y++)
			for(int y=0;list3.size()>y;y++)
			{
				String SQL_QUERY3 = "from Student as stu  where stu.studentUserName='"+list3.get(y).getStudentCompany().getStudentId()+"'";
				Query query3 = session3.createQuery(SQL_QUERY3);

					//students=((org.hibernate.Query) query3).list();

				

					List<Student> list4 = ((org.hibernate.Query) query3).list();
				//getStudents().add(y,list4.get(0));
					Student student = new Student();
					student=(Student)list4.get(0);
				students.add(student);
			}
			session3.close();
			return students;
			
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
