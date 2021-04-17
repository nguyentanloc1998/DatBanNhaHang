package entity;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.MapsId;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;

@Entity
public class TaiKhoan implements Serializable{
	@Id
	private String maTaiKhoan;
	private String tenDangNhap;
	private String matKhau;
	private String loaiTaiKhoan;
	
	@OneToOne(mappedBy = "taikhoan")
	private NguoiDung nguoiDung;
	
	public TaiKhoan() {
		// TODO Auto-generated constructor stub
	}
}
