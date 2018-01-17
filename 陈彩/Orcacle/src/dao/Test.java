package dao;

import org.hibernate.Session;

public class Test {
	
	public static void main(String[] args) {
		Session session=HibernateSessionFactory.getSession();
		Dept dept=(Dept) session.get(Dept.class, 10);
		System.out.println(dept);
	}

}
