package entity;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.MapsId;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;

@Entity
public class NguoiDung implements Serializable{
	@Id
	private String maNguoiDung;
	private String soDT;
	private String hoTen;
	private String diaChi;
	private String email;
	
	
	@OneToOne
	@JoinColumn(name = "maTaiKhoan",referencedColumnName = "maTaiKhoan")
	private TaiKhoan taikhoan;
	
	@OneToMany(mappedBy = "nguoiDung")
	private List<HoaDon> listHoaDon;
	
	
	public NguoiDung() {
		// TODO Auto-generated constructor stub
	}
}
