package entity;

import java.io.Serializable;
import java.time.LocalDateTime;
import java.util.Date;
import java.util.List;

import javax.persistence.Entity;
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
	private String maHoaDon;
	private Date ngayLap;
	private long tongTien;
	private String trangThai;
	
	@ManyToOne
	@JoinColumn(name = "maBan")
	private Ban ban;
	
	@OneToMany(mappedBy = "hoaDon")
	private List<ChiTietHoaDon> listChiTietHD;
	
	@ManyToOne
	@JoinColumn(name = "maNguoiDung")
	private NguoiDung nguoiDung;
	
	@ManyToOne
	@JoinColumn(name = "maPhieuDatBan")
	private PhieuDatBan phieuDatBan;
	public HoaDon() {
		// TODO Auto-generated constructor stub
	}
	
	
}
