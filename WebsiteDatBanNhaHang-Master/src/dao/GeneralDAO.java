package dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

public abstract class GeneralDAO<T> {
protected EntityManager em;
    

    public GeneralDAO() {
    em=MyEntityManagerFactory.getInstance().getEntityManager();
    }
    public boolean save(T t) {
		EntityTransaction tr = em.getTransaction();
		try {
			tr.begin();
			em.persist(t);
			tr.commit();
			return true;
		}catch (Exception e) {
			tr.rollback();
		}
		return false;
	}
	
    public boolean delete(T t) {
		EntityTransaction tr = em.getTransaction();
		try {
			tr.begin();
			em.remove(t);
			tr.commit();
			return true;
		}catch (Exception e) {
			tr.rollback();
		}
		return false;
	}
	
    public boolean update(T t) {
		EntityTransaction tr = em.getTransaction();
		try {
			tr.begin();
			em.merge(t);
			tr.commit();
		}catch (Exception e) {
			System.out.println(e);
			tr.rollback();
		}
                return false;
	}
	
	@SuppressWarnings("unchecked")
    public List<T> getAll(Class<T> t) {
		String s = "From " + t.getName();
		Query q = em.createQuery(s);
		return q.getResultList();
	}
    
	
    public T getById(Class<T> t, int o) {
		return em.find(t, o);
	}
 
    public T getByDay(Class<T> t, Object o) {
		return em.find(t, o);
	}
}
