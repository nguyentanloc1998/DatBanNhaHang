package dao;

import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import entity.ChiTietDatBan;

public class ChiTietDatBanDAO extends GeneralDAO<ChiTietDatBan>{
 public boolean deleteCTDB (ChiTietDatBan ctdb) {
	 try {
		 EntityTransaction tr = em.getTransaction();
		 tr.begin();
		 String s =  "DELETE FROM ChiTietDatBan  WHERE maPhieuDatBan = :maphieu and maBan = :maban";
		 Query query = em.createNativeQuery(s);
		 query.setParameter("maban", ctdb.getBan().getMaBan());
		 query.setParameter("maphieu", ctdb.getPhieuDatBan().getMaPhieuDatBan());
			  int deletedCount = query.executeUpdate();
			  tr.commit();
			  em.clear();
			  System.out.println(deletedCount);
		 if(deletedCount>0) {
			 return true;
		 }
		
	} catch (Exception e) {
		// TODO: handle exception
		System.out.println(e);
		 return false;
	}
	 System.out.println("toi day");
	return false;
 }
}
