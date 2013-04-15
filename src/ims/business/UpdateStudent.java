package ims.business;

import ims.data.Company;
import ims.data.Student;
import ims.data.User;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

public class UpdateStudent {
	
	private SessionFactory sessionFactory;
	
	


// this method is used to get details before update 
		public List<Student> getDetails(String userName)
		{
			

			Session session = getSessionFactory().openSession();
			String SQL_QUERY = "from Student as stu  where stu.studentUserName='"+userName+"'";
			Query query = session.createQuery(SQL_QUERY);
		
			List<Student> list = ((org.hibernate.Query) query).list();
			session.close();

			return list;
			
		}
		// this method is used to get details befor student update
		public List<User> getDetails2(String userName)
		{
			

			Session session2 = getSessionFactory().openSession();
			String SQL_QUERY = "from User as usr  where usr.userName='"+userName+"'";
			Query query = session2.createQuery(SQL_QUERY);
		
			List<User> list = ((org.hibernate.Query) query).list();
			session2.close();

			return list;
			
		}
		
	// this method is used update student in database	
		public void updateStudent(String userName,Student studentUpdated,User userUpdated)
		{
			
			
			Session session = getSessionFactory().openSession();		
			session.beginTransaction();		
			Student student2 = (Student)session.get(Student.class, userName);
			student2=studentUpdated;		
			session.merge(student2);
			session.getTransaction().commit();
			session.close();
			
			
			Session session2 = getSessionFactory().openSession();
			session2.beginTransaction();
			User user = (User)session2.get(User.class, userName);
			user=userUpdated;
			session2.merge(user);
			session2.getTransaction().commit();
			session2.close();
			
			
		}
		
		
		
		

// getters and setters
		public SessionFactory getSessionFactory() {
			return sessionFactory;
		}


		public void setSessionFactory(SessionFactory sessionFactory) {
			this.sessionFactory = sessionFactory;
		}

}
