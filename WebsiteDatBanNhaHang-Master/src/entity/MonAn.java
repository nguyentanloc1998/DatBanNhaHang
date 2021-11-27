package entity;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
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
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer maMonAn;
	@Column(columnDefinition = "nvarchar(255)")
	private String tenMonAn;
	
	private String urlHinhAnh;
	@Column(columnDefinition = "nvarchar(255)")
	private String donViTinh;
	private long donGia;
	@Column(columnDefinition = "nvarchar(255)")
	private String trangThai;
	@OneToMany(mappedBy = "monAn")
	private List<ChiTietDatMonAn> listChiTietHoaDon;
	
	@ManyToOne
	@JoinColumn(name = "maLoaiMonAn")
	private LoaiMonAn loaiMonAn;
	
	
	public MonAn() {
		// TODO Auto-generated constructor stub
	}


	public MonAn(Integer maMonAn, String tenMonAn, String urlHinhAnh, String donViTinh, long donGia, String trangThai,
			List<ChiTietDatMonAn> listChiTietHoaDon, LoaiMonAn loaiMonAn) {
		super();
		this.maMonAn = maMonAn;
		this.tenMonAn = tenMonAn;
		this.urlHinhAnh = urlHinhAnh;
		this.donViTinh = donViTinh;
		this.donGia = donGia;
		this.trangThai = trangThai;
		this.listChiTietHoaDon = listChiTietHoaDon;
		this.loaiMonAn = loaiMonAn;
	}


	public Integer getMaMonAn() {
		return maMonAn;
	}


	public void setMaMonAn(Integer maMonAn) {
		this.maMonAn = maMonAn;
	}


	public String getTenMonAn() {
		return tenMonAn;
	}


	public void setTenMonAn(String tenMonAn) {
		this.tenMonAn = tenMonAn;
	}


	public String getUrlHinhAnh() {
		return urlHinhAnh;
	}


	public void setUrlHinhAnh(String urlHinhAnh) {
		this.urlHinhAnh = urlHinhAnh;
	}


	public String getDonViTinh() {
		return donViTinh;
	}


	public void setDonViTinh(String donViTinh) {
		this.donViTinh = donViTinh;
	}


	public long getDonGia() {
		return donGia;
	}


	public void setDonGia(long donGia) {
		this.donGia = donGia;
	}


	public String getTrangThai() {
		return trangThai;
	}


	public void setTrangThai(String trangThai) {
		this.trangThai = trangThai;
	}


	public List<ChiTietDatMonAn> getListChiTietHoaDon() {
		return listChiTietHoaDon;
	}


	public void setListChiTietHoaDon(List<ChiTietDatMonAn> listChiTietHoaDon) {
		this.listChiTietHoaDon = listChiTietHoaDon;
	}


	public LoaiMonAn getLoaiMonAn() {
		return loaiMonAn;
	}


	public void setLoaiMonAn(LoaiMonAn loaiMonAn) {
		this.loaiMonAn = loaiMonAn;
	}


	public static long getSerialversionuid() {
		return serialVersionUID;
	}


	@Override
	public String toString() {
		return "MonAn [maMonAn=" + maMonAn + ", tenMonAn=" + tenMonAn + ", urlHinhAnh=" + urlHinhAnh + ", donViTinh="
				+ donViTinh + ", donGia=" + donGia + ", trangThai=" + trangThai + ", listChiTietHoaDon="
				+ listChiTietHoaDon + ", loaiMonAn=" + loaiMonAn + "]";
	}


	
	
}
