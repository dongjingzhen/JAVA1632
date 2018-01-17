package dao;

import orcl.Dept;

import org.hibernate.Session;

public class text {
public static void main(String[] args) {
  Session session= 	HibernateSessionFactory.getSession();
  Dept d=(Dept) session.get(Dept.class, 10);
  System.out.println(d.toString());
}
}
