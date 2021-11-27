package dao;

import java.util.List;

import javax.persistence.Query;

import entity.TaiKhoan;

public class AccoutDAO extends GeneralDAO<TaiKhoan>{
	public boolean LoginAccount(TaiKhoan taikhoan) {
		
		TaiKhoan ac = getUserByUsername(taikhoan.getTenDangNhap());
		if(ac!=null) {
			if(ac.getMatKhau().equals(taikhoan.getMatKhau())) {
				return true;
			}
			return false;
		}
		return false;
	}
	public TaiKhoan getUserByUsername(String username) {
		TaiKhoan tk = new TaiKhoan();
		String s = "FROM TaiKhoan where tenDangNhap = :user_name ";
		
		Query q = em.createQuery(s).setParameter("user_name", username);
		List<TaiKhoan> dsTK = q.getResultList();
		
		return dsTK.get(0);
	}
}
