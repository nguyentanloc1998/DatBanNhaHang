package entity;

import java.io.Serializable;
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

@Entity
public class Ban implements Serializable{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer maBan;
	@Column(columnDefinition = "nvarchar(255)")
	private String tenBan;
	
	private int soChoNgoi;
	@Column(columnDefinition = "nvarchar(255)")
	private String trangThai;
	
	@ManyToOne(cascade=CascadeType.ALL)
	@JoinColumn(name = "maKhuVuc")
	private KhuVuc khuVuc;
	

	@OneToMany(mappedBy = "ban")
	private List<ChiTietDatBan> listChiTietDatBan;
	
	
	
	public Ban() {
		// TODO Auto-generated constructor stub
	}



	public Ban(int maBan, String tenBan, int soChoNgoi, String trangThai, KhuVuc khuVuc,
			List<PhieuDatBan> dsPhieuDat) {
		super();
		this.maBan = maBan;
		this.tenBan = tenBan;
		this.soChoNgoi = soChoNgoi;
		this.trangThai = trangThai;
		this.khuVuc = khuVuc;
	
	}



	public int getMaBan() {
		return maBan;
	}



	public void setMaBan(int maBan) {
		this.maBan = maBan;
	}



	public String getTenBan() {
		return tenBan;
	}



	public void setTenBan(String tenBan) {
		this.tenBan = tenBan;
	}



	public int getSoChoNgoi() {
		return soChoNgoi;
	}



	public void setSoChoNgoi(int soChoNgoi) {
		this.soChoNgoi = soChoNgoi;
	}



	public String getTrangThai() {
		return trangThai;
	}



	public void setTrangThai(String trangThai) {
		this.trangThai = trangThai;
	}



	public KhuVuc getKhuVuc() {
		return khuVuc;
	}



	public void setKhuVuc(KhuVuc khuVuc) {
		this.khuVuc = khuVuc;
	}



	public List<ChiTietDatBan> getListChiTietDatBan() {
		return listChiTietDatBan;
	}



	public void setListChiTietDatBan(List<ChiTietDatBan> listChiTietDatBan) {
		this.listChiTietDatBan = listChiTietDatBan;
	}



	@Override
	public String toString() {
		return "Ban [maBan=" + maBan + ", tenBan=" + tenBan + ", soChoNgoi=" + soChoNgoi + ", trangThai=" + trangThai
				+ ", khuVuc=" + khuVuc + ", listChiTietDatBan=" + listChiTietDatBan + "]";
	}

		
 
}
