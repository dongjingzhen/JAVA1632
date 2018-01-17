package dao;

import org.hibernate.Session;

public class Test {
	public static void main(String[] args) {
		Session session = HibernateSessionFactory.getSession();
		Emp emp = (Emp) session.get(Emp.class, 7698);
		System.out.println(emp.toString());
	}
}
