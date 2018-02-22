package com;

import org.hibernate.Session;

public class TestClass {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Session session = HibernateUtil.getSessionFactory().openSession();
		 session.getTransaction().begin();
		 	TestPojo testPojo = new TestPojo("feorz","me");
		 	session.save(testPojo);
		    session.getTransaction().commit();
		    session.close();
		    
	}

}
