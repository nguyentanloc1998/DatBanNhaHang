package entity;

import java.io.Serializable;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Date;
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
public class HoaDon implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 3140730691490074556L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer maHoaDon;
	private LocalDate ngayLap;
	private long tongTien;
	@Column(columnDefinition = "nvarchar(255)")
	private String trangThai;
	@ManyToOne(cascade=CascadeType.ALL)
	@JoinColumn(name = "maNguoiDung")
	private NguoiDung nguoiDung;
	
	@OneToOne(mappedBy = "hoaDon",cascade=CascadeType.ALL)
	private PhieuDatBan phieuDatBan;
	public HoaDon() {
		// TODO Auto-generated constructor stub
	}


	public HoaDon(Integer maHoaDon, LocalDate ngayLap, long tongTien, String trangThai, NguoiDung nguoiDung,
			PhieuDatBan phieuDatBan) {
		super();
		this.maHoaDon = maHoaDon;
		this.ngayLap = ngayLap;
		this.tongTien = tongTien;
		this.trangThai = trangThai;
		this.nguoiDung = nguoiDung;
		this.phieuDatBan = phieuDatBan;
	}


	public Integer getMaHoaDon() {
		return maHoaDon;
	}


	public void setMaHoaDon(Integer maHoaDon) {
		this.maHoaDon = maHoaDon;
	}


	public LocalDate getNgayLap() {
		return ngayLap;
	}


	public void setNgayLap(LocalDate ngayLap) {
		this.ngayLap = ngayLap;
	}


	public long getTongTien() {
		Long totalcost = 0l;
		List<ChiTietDatMonAn> dsDatMon = new ArrayList<ChiTietDatMonAn>();
		if(phieuDatBan!=null) {
		dsDatMon = phieuDatBan.getListChiTietDatMon();
		if(dsDatMon!=null) {
		for(int i=0;i<phieuDatBan.getListChiTietDatMon().size();i++) {
			totalcost += phieuDatBan.getListChiTietDatMon().get(i).getThanhtien();
			}
		}
		}
			return totalcost;
		
	}
	public void setTongTien(long tongTien) {
		this.tongTien = tongTien;
	}


	public String getTrangThai() {
		return trangThai;
	}


	public void setTrangThai(String trangThai) {
		this.trangThai = trangThai;
	}


	public NguoiDung getNguoiDung() {
		return nguoiDung;
	}


	public void setNguoiDung(NguoiDung nguoiDung) {
		this.nguoiDung = nguoiDung;
	}


	public PhieuDatBan getPhieuDatBan() {
		return phieuDatBan;
	}


	public void setPhieuDatBan(PhieuDatBan phieuDatBan) {
		this.phieuDatBan = phieuDatBan;
	}


	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "HoaDon [maHoaDon=" + maHoaDon + ", ngayLap=" + ngayLap + ", tongTien=" + tongTien + ", trangThai="
				+ trangThai + ", nguoiDung=" + nguoiDung + ", phieuDatBan=" + phieuDatBan + "]";
	}

	
	
}
