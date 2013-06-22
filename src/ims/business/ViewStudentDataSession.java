package ims.business;

import ims.data.Application;
import ims.data.Company;
import ims.data.Student;
import ims.data.StudentCompany;
import ims.data.StudentComplitedProjects;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.SessionFactory;


import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
public class ViewStudentDataSession {
	
	SessionFactory sessionFactory;
	// to get student list to company

	

// this method is used to get all student details to admin
	public List<Student> allStudentToAdmin()
	{
		Session session = getSessionFactory().openSession();
		String SQL_QUERY = "from Student";
		Query query = session.createQuery(SQL_QUERY);
		List<Student> list = ((org.hibernate.Query) query).list();

		return list;
		
	}
	
// this method is used to get student profile to specific student	
	public List<Student> viewStudentToStudent(String userName)
	{
		Session session = getSessionFactory().openSession();
		String SQL_QUERY = "from Student as stu  where stu.studentUserName='"+userName+"'";
		Query query = session.createQuery(SQL_QUERY);
	
		List<Student> list = ((org.hibernate.Query) query).list();
		session.close();

		return list;
		
	}

	// this method is used to get sutdent cv details to admin
	public List<Student> studentCvToAdmin(String userName)
	{
		Session session = getSessionFactory().openSession();
		String SQL_QUERY = "from Student as stu  where stu.studentUserName='"+userName+"'";
		Query query = session.createQuery(SQL_QUERY);
	
		List<Student> list = ((org.hibernate.Query) query).list();
		session.close();

		return list;
		
	}
	// this method is used to get student cv to compnay 
	public List<Student> studentCvToCompany(String userName)
	{
		Session session = getSessionFactory().openSession();
		String SQL_QUERY = "from Student as stu  where stu.studentUserName='"+userName+"'";
		Query query = session.createQuery(SQL_QUERY);
	
		List<Student> list = ((org.hibernate.Query) query).list();
		session.close();

		return list;
		
	}

	// this method is used to get relavent applied students to company
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
					
					
					if(list4.size()!=0)
					{
						Student student = new Student();
						student=(Student)list4.get(0);
					students.add(student);
					}
					
			
			}
			
			session3.close();
			
			return students;
			
		}
		
		
	

		
	}
	
	// this method is used to get not selected student for interivew list for company
	public List<Student> notSelectForInterview(String userName)
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
			String SQL_QUERY2 = "from Application as app  where app.studentCompany.companyId='"+userName+"' and app.state='pending'";
			Query query2 = session2.createQuery(SQL_QUERY2);
		
			List<Application> list3 = ((org.hibernate.Query) query2).list();
			session2.close();

						
			
			Session session3 = getSessionFactory().openSession();
			//for(int y=0;list3.get(y).getStudentCompany().getStudentId().length()!=0;y++)
			for(int y=0;list3.size()>y;y++)
			{
				String SQL_QUERY3 = "from Student as stu  where stu.studentUserName='"+list3.get(y).getStudentCompany().getStudentId()+"'";
				Query query3 = session3.createQuery(SQL_QUERY3);

					//students=((org.hibernate.Query) query3).list();

				

					List<Student> list4 = ((org.hibernate.Query) query3).list();
				//getStudents().add(y,list4.get(0));
				if(list4.size()!=0)
				{
					Student student = new Student();
					student=(Student)list4.get(0);
				students.add(student);
				}
			}
			session3.close();
			return students;
			
		}
		
		
	

		
	}
	
	// this method is used to get  selected student for interivew list for company
	public List<Student> selectedForInterview(String userName)
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
			String SQL_QUERY2 = "from Application as app  where app.studentCompany.companyId='"+userName+"' and app.state='interview'";
			Query query2 = session2.createQuery(SQL_QUERY2);
		
			List<Application> list3 = ((org.hibernate.Query) query2).list();
			session2.close();

						
			
			Session session3 = getSessionFactory().openSession();
			//for(int y=0;list3.get(y).getStudentCompany().getStudentId().length()!=0;y++)
			for(int y=0;list3.size()>y;y++)
			{
				String SQL_QUERY3 = "from Student as stu  where stu.studentUserName='"+list3.get(y).getStudentCompany().getStudentId()+"'";
				Query query3 = session3.createQuery(SQL_QUERY3);

					//students=((org.hibernate.Query) query3).list();

				

					List<Student> list4 = ((org.hibernate.Query) query3).list();
				//getStudents().add(y,list4.get(0));
					if(list4.size()!=0)
					{
						Student student = new Student();
						student=(Student)list4.get(0);
					students.add(student);
					}
				
			}
			session3.close();
			return students;
			
		}
		
		
	

		
	}
	
	
	
	
	public List<String> getStudentAppliedCompanyNames(String studentUsername)
	{
		Session session2 = getSessionFactory().openSession();
		String SQL_QUERY2 = "from Application as app  where app.studentCompany.studentId='"+studentUsername+"' ";
		Query query2 = session2.createQuery(SQL_QUERY2);
	
		List<Application> list = ((org.hibernate.Query) query2).list();
		session2.close();
		
		
/*		List<String> companyUserNames= null;
		//if(list.get(0)!=null)
	
			companyUserNames.add(list.get(0).getStudentCompany().getCompanyId());
		if(list.get(1)!=null)
			companyUserNames.add(list.get(1).getStudentCompany().getCompanyId());
		if(list.get(2)!=null)
			companyUserNames.add(list.get(2).getStudentCompany().getCompanyId());
		if(list.get(3)!=null)
			companyUserNames.add(list.get(3).getStudentCompany().getCompanyId());
		if(list.get(4)!=null)
			companyUserNames.add(list.get(4).getStudentCompany().getCompanyId());*/
		
		List<String> companyNames=new ArrayList<String>();
		
		Session session3 = getSessionFactory().openSession();
		for(int x=0;x<=4;x++)
		{
			String SQL_QUERY3 ="from Company as com  where com.companyUserName='"+list.get(x).getStudentCompany().getCompanyId()+"' ";
			Query query = session3.createQuery(SQL_QUERY3);
		
			List<Company> list2 = ((org.hibernate.Query) query).list();
			
			companyNames.add(list2.get(0).getCompanyName());
			
			
		}

		session3.close();
		
		return companyNames;
		
		
		
		
	}
	
	
	public List<StudentComplitedProjects> getStudentComplitedProjectsFromDB(String studentUserName )
	{
		Session session2 = getSessionFactory().openSession();
		String SQL_QUERY2 = "from StudentComplitedProjects as scp  where scp.student.studentUserName='"+studentUserName+"' ";
		Query query2 = session2.createQuery(SQL_QUERY2);
	
		List<StudentComplitedProjects> list = ((org.hibernate.Query) query2).list();
		session2.close();
		
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
