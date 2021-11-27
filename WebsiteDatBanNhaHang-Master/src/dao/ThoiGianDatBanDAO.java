package dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Query;

import entity.PhieuDatBan;
import entity.TaiKhoan;
import entity.ThoiGianDatBan;

public class ThoiGianDatBanDAO extends GeneralDAO<ThoiGianDatBan>{
	public ThoiGianDatBan getUserByThoiGian(ThoiGianDatBan tg) {
		//PhieuDatBan tk = new PhieuDatBan();
		String s = "FROM ThoiGianDatBan where gioDat = :giodat and ngayDat = :ngaydat ";
		
		Query q = em.createQuery(s);
		q.setParameter("giodat", tg.getGioDat());
		q.setParameter("ngaydat", tg.getNgayDat());
		List<ThoiGianDatBan> dsTK=q.getResultList();
	//	System.out.println(dsTK.size());
		if(dsTK.size()!=0) {
			//System.out.println(dsTK.get(0).getDsPhieuDatBan().size());
			return dsTK.get(0);	
		}else {
			return null;
		}
	}
}
