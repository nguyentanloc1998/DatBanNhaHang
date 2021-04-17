package entity;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import dao.KhuVucDao;
import dao.MyEntityManagerFactory;
import impls.copy.KhuVucImpls;

public class main {	
public static void main(String[] args) {
	EntityManager em = MyEntityManagerFactory.getInstance().getEntityManager();
//	
//	KhuVucDao kvd = new KhuVucImpls();
//	KhuVuc k = new KhuVuc("1", "a", null);
//	kvd.addkv(k);
	
}
}
