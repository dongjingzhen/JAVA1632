package dao;

import org.hibernate.Session;

public class t {
	public static void main(String[] args) {
		Session session = HibernateSessionFactory.getSession();
		Emp e = (Emp) session.get(Emp.class, 7369);
		System.out.println(e.toString());
	}
}
