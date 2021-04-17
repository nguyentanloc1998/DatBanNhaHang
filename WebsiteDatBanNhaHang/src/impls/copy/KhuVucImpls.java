package impls.copy;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;

import dao.KhuVucDao;
import dao.MyEntityManagerFactory;
import entity.KhuVuc;

public class KhuVucImpls implements KhuVucDao{
	
	private EntityManager em;
	
	public KhuVucImpls() {
		// TODO Auto-generated constructor stub
		em = MyEntityManagerFactory.getInstance().getEntityManager();
	}
	
	@Override
	
	public boolean addkv(KhuVuc kv) {
		
		boolean result = false;
		
		EntityTransaction tr = em.getTransaction();
		try {
			tr.begin();
			
			em.persist(kv);
			
			tr.commit();
			result = true;
		}catch (RuntimeException e) {
			tr.rollback();
			throw e;
		}
		
		return result;
	}

}
