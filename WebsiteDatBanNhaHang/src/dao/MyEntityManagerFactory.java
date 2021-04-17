package dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class MyEntityManagerFactory {
	
	private static MyEntityManagerFactory instance = null;
	private EntityManager entityManager;
	
	private MyEntityManagerFactory() {
		entityManager = Persistence.createEntityManagerFactory("WebsiteDatBanNhaHang").createEntityManager();
	}
	
	public EntityManager getEntityManager() {
		return entityManager;
	}
	
	public synchronized static MyEntityManagerFactory getInstance() {
		if(instance == null)
			instance = new MyEntityManagerFactory();
		return instance;
	}

}
