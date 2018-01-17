package dao;

import org.hibernate.Session;
import org.hibernate.Transaction;


public class UserDao {
	public static void main(String[] args) {
		Session session =  HibernateSessionFactory.getSession();
		Transaction transaction = session.beginTransaction();
		
		Emp emp =(Emp) session.get(Emp.class, 7369);
		System.out.println(emp.getEmpno());
		transaction.commit();
		HibernateSessionFactory.closeSession();
	}
}
