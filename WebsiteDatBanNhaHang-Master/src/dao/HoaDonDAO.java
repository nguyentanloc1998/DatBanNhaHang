package dao;

import java.time.LocalDate;
import java.util.List;

import javax.persistence.Query;

import entity.HoaDon;

public class HoaDonDAO extends GeneralDAO<HoaDon>{
	public List<HoaDon> SoLuongHoaDonDaXacNhan() {
		String s = "FROM HoaDon where trangThai= :trangthai";
		Query q = em.createQuery(s);
		q.setParameter("trangthai", "Đã Thanh Toán");
		//System.out.println(s);
		return q.getResultList();
	}
	public List<HoaDon> SoLuongPDB() {
		String s = "FROM HoaDon where trangThai!= :trangthai";
		Query q = em.createQuery(s);
		q.setParameter("trangthai", "Đã Thanh Toán");
		//System.out.println(s);
		return q.getResultList();
	}
	public List<HoaDon> HoaDonHomNay(LocalDate ngay){
String s = "FROM HoaDon where trangThai = :trangthai AND ngayLap = :ngaylap";
		Query q = em.createQuery(s).setParameter("ngaylap", ngay);
		q.setParameter("trangthai", "Đã Thanh Toán");
		return q.getResultList();
	}
}
