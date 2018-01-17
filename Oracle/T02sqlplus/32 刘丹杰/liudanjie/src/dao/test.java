package dao;

import org.hibernate.Session;

public class test {
	public static void main(String[] args) {
		Session session=HibernateSessionFactory.getSession();
		Dept dept=(dao.Dept) session.get(Dept.class, 10);
		System.out.println(dept.toString());
	}
}
