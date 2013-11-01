package ims.business;

import java.util.ArrayList;
import java.util.List;

import ims.data.Company;
import ims.data.Messages;
import ims.data.Student;
import ims.data.StudentCompany;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

public class HandleMassageDataSession {
	
	private SessionFactory sessionFactory;
	
	
	
	
	
	public void saveCompanyMessageInDb(Messages msg)
	{
		Session session = getSessionFactory().openSession();
		session.beginTransaction();
		session.save(msg);
		session.beginTransaction().commit();
		session.close();
		
	}
	
	public List<Messages> getCompanyMessages(String userName)
	{
		List<Messages> msgList =new ArrayList<Messages>();
		List<Messages> msgListSorted =new ArrayList<Messages>();
		Session session = getSessionFactory().openSession();
		String HQL_QUERY = "from Messages";
		Query query = session.createQuery(HQL_QUERY);
		List<Messages> list = ((org.hibernate.Query) query).list();
		
		
		
		for(int x=0;x<list.size();x++)
		{
			if(list.get(x).getReceiveId().equals("AllC"))
			{
				
				msgList.add(list.get(x));
				
			}
			else
			{
				String[] receiveIds = list.get(x).getReceiveId().split(",");
				for(int j=0;j<receiveIds.length;j++)
				{
					
					if(receiveIds[j].equals(userName))
					{
						
						msgList.add(list.get(x));
						break;
						
					}
						
				}
				
			}

			
		}
		if(msgList.size()>1)
		{
			for(int k=0;k<msgList.size();k++)
			{
				msgListSorted.add(msgList.get(msgList.size()-(k+1)));
				
			}
			return msgListSorted;
			
		}
		System.out.println("msg list size"+msgList.size());
		
		return msgList;
	}
	
	
	
	public List<Messages> getCompanySendMessages(String userName)
	{
		//List<Messages> msgList =new ArrayList<Messages>();
		List<Messages> msgListSorted =new ArrayList<Messages>();
		Session session = getSessionFactory().openSession();
		String HQL_QUERY = " from Messages msg where msg.senderId='" + userName + "'";
		Query query = session.createQuery(HQL_QUERY);
		List<Messages> msgList = ((org.hibernate.Query) query).list();
		
		if(msgList.size()>1)
		{
			for(int k=0;k<msgList.size();k++)
			{
				msgListSorted.add(msgList.get(msgList.size()-(k+1)));
				
			}
			return msgListSorted;
			
		}
		System.out.println("msg list size"+msgList.size());
		
		return msgList;
		
		
	}
	
	
	public List<Messages> getStudentMessages(String userName)
	{
		List<Messages> msgList =new ArrayList<Messages>();
		List<Messages> msgListSorted =new ArrayList<Messages>();
		Session session = getSessionFactory().openSession();
		String HQL_QUERY = "from Messages";
		Query query = session.createQuery(HQL_QUERY);
		List<Messages> list = ((org.hibernate.Query) query).list();
		
		//System.out.println(" oldmsg list size"+list.size());
		
		for(int x=0;x<list.size();x++)
		{
			if(list.get(x).getReceiveId().equals("AllS"))
			{
				
				
				msgList.add(list.get(x));
				
			}
			else
			{
				String[] receiveIds = list.get(x).getReceiveId().split(",");
				for(int j=0;j<receiveIds.length;j++)
				{
					
					
					if(receiveIds[j].equals(userName))
					{
						
						
						msgList.add(list.get(x));
						break;
						
					}
						
				}
				
			}

			
		}
		if(msgList.size()>1)
		{
			for(int k=0;k<msgList.size();k++)
			{
				msgListSorted.add(msgList.get(msgList.size()-(k+1)));
				
			}
			return msgListSorted;
			
		}
		System.out.println("msg list size"+msgList.size());
		
		return msgList;
	}
	
	public List<Messages> getStudentSendMessages(String userName)
	{
		//List<Messages> msgList =new ArrayList<Messages>();
		List<Messages> msgListSorted =new ArrayList<Messages>();
		Session session = getSessionFactory().openSession();
		String HQL_QUERY = " from Messages msg where msg.senderId='" + userName + "'";
		Query query = session.createQuery(HQL_QUERY);
		List<Messages> msgList = ((org.hibernate.Query) query).list();
		
		if(msgList.size()>1)
		{
			for(int k=0;k<msgList.size();k++)
			{
				msgListSorted.add(msgList.get(msgList.size()-(k+1)));
				
			}
			return msgListSorted;
			
		}
		System.out.println("msg list size"+msgList.size());
		
		return msgList;
		
		
	}
	
	
	
	
	
	
	
	
	
	
	//getters and setters

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	
	
	

}
