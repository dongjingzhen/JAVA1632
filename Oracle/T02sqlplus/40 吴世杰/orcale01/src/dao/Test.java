package dao;

import org.hibernate.Session;
import org.hibernate.Transaction;

public class Test {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Session session = HibernateSessionFactory.getSession();
		Dept dept = (Dept) session.get(Dept.class, 10);
		System.out.println(dept.toString());
		session.close();

	}

}
