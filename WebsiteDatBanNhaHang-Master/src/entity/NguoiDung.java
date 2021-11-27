package entity;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.MapsId;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;

@Entity
public class NguoiDung implements Serializable{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int maNguoiDung;
	@Column(columnDefinition = "nvarchar(255)")
	private String soDT;
	@Column(columnDefinition = "nvarchar(255)")
	private String hoTen;
	@Column(columnDefinition = "nvarchar(255)")
	private String diaChi;
	@Column(columnDefinition = "nvarchar(255)")
	private String email;
	
	
	@OneToOne
	@JoinColumn(name = "maTaiKhoan",referencedColumnName = "maTaiKhoan")
	private TaiKhoan taikhoan;
	
	@OneToMany(mappedBy = "khachdatban")
	private List<PhieuDatBan> dsphieudat;
	@OneToMany(mappedBy = "nguoiDung")
	private List<HoaDon> listHoaDon;
	
	
	public NguoiDung(int maNguoiDung, String soDT, String hoTen, String diaChi, String email, TaiKhoan taikhoan,
			List<HoaDon> listHoaDon) {
		super();
		this.maNguoiDung = maNguoiDung;
		this.soDT = soDT;
		this.hoTen = hoTen;
		this.diaChi = diaChi;
		this.email = email;
		this.taikhoan = taikhoan;
		this.listHoaDon = listHoaDon;
	}


	public NguoiDung() {
		// TODO Auto-generated constructor stub
	}


	public int getMaNguoiDung() {
		return maNguoiDung;
	}


	public void setMaNguoiDung(int maNguoiDung) {
		this.maNguoiDung = maNguoiDung;
	}


	public String getSoDT() {
		return soDT;
	}


	public void setSoDT(String soDT) {
		this.soDT = soDT;
	}


	public String getHoTen() {
		return hoTen;
	}


	public void setHoTen(String hoTen) {
		this.hoTen = hoTen;
	}


	public String getDiaChi() {
		return diaChi;
	}


	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public TaiKhoan getTaikhoan() {
		return taikhoan;
	}


	public void setTaikhoan(TaiKhoan taikhoan) {
		this.taikhoan = taikhoan;
	}


	public List<HoaDon> getListHoaDon() {
		return listHoaDon;
	}


	public void setListHoaDon(List<HoaDon> listHoaDon) {
		this.listHoaDon = listHoaDon;
	}


	@Override
	public String toString() {
		return "NguoiDung [maNguoiDung=" + maNguoiDung + ", soDT=" + soDT + ", hoTen=" + hoTen + ", diaChi=" + diaChi
				+ ", email=" + email + ", taikhoan=" + taikhoan + ", listHoaDon=" + listHoaDon + "]";
	}
	
	
	
}
