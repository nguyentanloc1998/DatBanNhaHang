package dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Query;

import entity.NguoiDung;
import entity.TaiKhoan;

public class NguoiDungDAO extends GeneralDAO<NguoiDung>{
public List<TaiKhoan> getDsNguoiDung(){
	String s = "FROM TaiKhoan where loaiTaiKhoan = 'Khách Hàng' ";
	
	Query q = em.createQuery(s);
	
	return q.getResultList();
}
}
