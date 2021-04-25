package entity;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
@Entity
public class MonAn implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1287220472141348968L;
	@Id
	private String maMonAn;
	private String tenMonAn;
	private byte urlHinhAnh;
	private String donViTinh;
	private long donGia;
	private String trangThai;
	@OneToMany(mappedBy = "monAn")
	private List<ChiTietHoaDon> listChiTietHoaDon;
	
	@ManyToOne
	@JoinColumn(name = "maLoaiMonAn")
	private LoaiMonAn loaiMonAn;
	
	@OneToMany(mappedBy = "monAn")
	private List<PhieuDatBan> listPhieuDatBan;
	public MonAn() {
		// TODO Auto-generated constructor stub
	}
}
