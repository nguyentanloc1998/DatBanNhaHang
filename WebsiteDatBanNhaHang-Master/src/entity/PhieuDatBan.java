package entity;

import java.io.Serializable;
import java.sql.Date;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity
public class PhieuDatBan implements Serializable {
	@Id 
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer maPhieuDatBan;
	private int soNguoi;
	@Column(columnDefinition = "nvarchar(255)")
	private String ghiChu;
	
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "maKhachHang")
	private NguoiDung khachdatban;

	@ManyToOne(cascade=CascadeType.ALL)
	@JoinColumn(name = "maThoiGianDatBan")
	private ThoiGianDatBan thoiGianDatBan;
	
	private String loaiTiec;
	
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name = "maHoaDon")
	private HoaDon hoaDon;
	
	@OneToMany(mappedBy = "phieuDatBan",cascade=CascadeType.ALL)
	private List<ChiTietDatMonAn>  listChiTietDatMon;
	
	@OneToMany(mappedBy = "phieuDatBan",cascade=CascadeType.ALL)
	private List<ChiTietDatBan> listChiTietDatBan;

	public PhieuDatBan() {
		super();
	}

	
	public NguoiDung getKhachdatban() {
		return khachdatban;
	}


	public void setKhachdatban(NguoiDung khachdatban) {
		this.khachdatban = khachdatban;
	}


	public Integer getMaPhieuDatBan() {
		return maPhieuDatBan;
	}

	public void setMaPhieuDatBan(Integer maPhieuDatBan) {
		this.maPhieuDatBan = maPhieuDatBan;
	}

	public int getSoNguoi() {
		return soNguoi;
	}

	public void setSoNguoi(int soNguoi) {
		this.soNguoi = soNguoi;
	}

	
	public String getGhiChu() {
		return ghiChu;
	}

	public void setGhiChu(String ghiChu) {
		this.ghiChu = ghiChu;
	}

	

	public ThoiGianDatBan getThoiGianDatBan() {
		return thoiGianDatBan;
	}

	public void setThoiGianDatBan(ThoiGianDatBan thoiGianDatBan) {
		this.thoiGianDatBan = thoiGianDatBan;
	}

	public String getLoaiTiec() {
		return loaiTiec;
	}

	public void setLoaiTiec(String loaiTiec) {
		this.loaiTiec = loaiTiec;
	}

	public HoaDon getHoaDon() {
		return hoaDon;
	}

	public void setHoaDon(HoaDon hoaDon) {
		this.hoaDon = hoaDon;
	}

	public List<ChiTietDatMonAn> getListChiTietDatMon() {
		return listChiTietDatMon;
	}

	public void setListChiTietDatMon(List<ChiTietDatMonAn> listChiTietDatMon) {
		this.listChiTietDatMon = listChiTietDatMon;
	}

	public List<ChiTietDatBan> getListChiTietDatBan() {
		return listChiTietDatBan;
	}

	public void setListChiTietDatBan(List<ChiTietDatBan> listChiTietDatBan) {
		this.listChiTietDatBan = listChiTietDatBan;
	}

	
	
	
	}
