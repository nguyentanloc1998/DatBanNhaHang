package entity;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.MapsId;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;

@Entity
public class TaiKhoan implements Serializable{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer maTaiKhoan;
	@Column(columnDefinition = "nvarchar(255)")
	private String tenDangNhap;
	@Column(columnDefinition = "nvarchar(255)")
	private String matKhau;
	@Column(columnDefinition = "nvarchar(255)")
	private String loaiTaiKhoan;
	
	@OneToOne(mappedBy = "taikhoan",cascade=CascadeType.ALL)
	private NguoiDung nguoiDung;
	
	
	
	public TaiKhoan(Integer maTaiKhoan, String tenDangNhap, String matKhau, String loaiTaiKhoan, NguoiDung nguoiDung) {
		super();
		this.maTaiKhoan = maTaiKhoan;
		this.tenDangNhap = tenDangNhap;
		this.matKhau = matKhau;
		this.loaiTaiKhoan = loaiTaiKhoan;
		this.nguoiDung = nguoiDung;
	}

	public TaiKhoan() {
		// TODO Auto-generated constructor stub
	}

	public Integer getMaTaiKhoan() {
		return maTaiKhoan;
	}

	public void setMaTaiKhoan(Integer maTaiKhoan) {
		this.maTaiKhoan = maTaiKhoan;
	}

	public String getTenDangNhap() {
		return tenDangNhap;
	}

	public void setTenDangNhap(String tenDangNhap) {
		this.tenDangNhap = tenDangNhap;
	}

	public String getMatKhau() {
		return matKhau;
	}

	public void setMatKhau(String matKhau) {
		this.matKhau = matKhau;
	}

	public String getLoaiTaiKhoan() {
		return loaiTaiKhoan;
	}

	public void setLoaiTaiKhoan(String loaiTaiKhoan) {
		this.loaiTaiKhoan = loaiTaiKhoan;
	}

	public NguoiDung getNguoiDung() {
		return nguoiDung;
	}

	public void setNguoiDung(NguoiDung nguoiDung) {
		this.nguoiDung = nguoiDung;
	}
	
	
	
}
