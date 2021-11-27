package dao;

import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import entity.ChiTietDatBan;
import entity.ChiTietDatMonAn;

public class ChiTietHoaDonDAO extends GeneralDAO<ChiTietDatMonAn>{
	public boolean deleteCTDM (ChiTietDatMonAn ctdb) {
		int count = 0;
		 try {
			 EntityTransaction tr = em.getTransaction();
			 tr.begin();
			 String s =  "DELETE FROM ChiTietDatMonAn  WHERE maMonAn = :maMonAn AND maPhieuDatBan = :maphieu";
			 Query query = em.createQuery(s);
			 query.setParameter("maMonAn", ctdb.getMonAn().getMaMonAn());
			 query.setParameter("maphieu", ctdb.getPhieuDatBan().getMaPhieuDatBan());
			 count = query.executeUpdate();
			 tr.commit();
			  em.clear();
			 if (count>0) {
				return true;
			}
				  query.executeUpdate();
				//  System.out.println(deletedCount);
			
			
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e.getMessage());
			return false;
		}
		 return false;
	 }
}
