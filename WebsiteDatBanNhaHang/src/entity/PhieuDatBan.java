package entity;

import java.io.Serializable;
import java.time.LocalDateTime;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

@Entity
public class PhieuDatBan implements Serializable {
	@Id 
	private String maPhieuDatBan;
	private LocalDateTime thoiGianDen;
	private int soNguoi;
	private String hoTen;
	private String soDT;
	private String ghiChu;
	private String email;
	
	@ManyToOne
	@JoinColumn(name = "maLoaiTiec")
	private LoaiTiec loaiTiec;
	
	@OneToMany(mappedBy = "phieuDatBan")
	private List<HoaDon> hoaDon;
	@ManyToOne
	@JoinColumn(name="maMonAn")
	private MonAn monAn;
	
	public PhieuDatBan() {
		// TODO Auto-generated constructor stub
	}

}
