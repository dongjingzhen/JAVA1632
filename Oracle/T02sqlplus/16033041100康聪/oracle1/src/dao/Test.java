package dao;

import java.util.List;

import org.hibernate.Session;

import domain.Dept;

public class Test {
	@SuppressWarnings("unchecked")
	public static void main(String[] args) {
		
		Session session=HibernateSessionFactory.getSession();
		List<Dept> deptList=session.createCriteria(Dept.class).list();
		
		for (Dept dept : deptList) {
			System.out.println(dept.toString());
		}
		
		
		
	}

}
