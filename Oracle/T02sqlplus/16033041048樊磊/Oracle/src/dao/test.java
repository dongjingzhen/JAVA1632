package dao;

import java.util.List;

import org.hibernate.Session;

import beans.Dept;
import beans.Salgrade;

public class test {
	
	public static void main(String[] args) {
		Session session = HibernateSessionFactory.getSession();
		List<Salgrade> salglist=session.createCriteria(Salgrade.class).list();
		System.out.println(salglist.size());
		for (Salgrade salgrade : salglist) {
			System.out.println(salgrade.toString());
		}
		List<Dept> deptlist=session.createCriteria(Dept.class).list();
		System.out.println(deptlist.size());
		for (Dept dept : deptlist) {
			System.out.println(dept.toString());
		}
		HibernateSessionFactory.closeSession();
	}

}
