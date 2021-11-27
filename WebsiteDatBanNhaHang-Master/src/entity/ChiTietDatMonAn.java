package entity;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.ForeignKey;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
@Entity
@IdClass(ChiTietDatMonAnPK.class)
public class ChiTietDatMonAn implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -7135896440568913673L;
	
	@Id
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name="maMonAn", foreignKey= @ForeignKey)
	private	MonAn monAn;
	@Id
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name="maPhieuDatBan", foreignKey= @ForeignKey)
	private PhieuDatBan phieuDatBan;
	private int soLuong;
	
	private Long thanhtien;
	
	public ChiTietDatMonAn(MonAn monAn, PhieuDatBan phieuDatBan, int soLuong) {
		super();
		this.monAn = monAn;
		this.phieuDatBan = phieuDatBan;
		this.soLuong = soLuong;
	}
	public ChiTietDatMonAn() {
		super();
	}
	
	
	
	public Long getThanhtien() {
		return soLuong*monAn.getDonGia();
	}
	public void setThanhtien(Long thanhtien) {
		this.thanhtien = thanhtien;
	}
	public MonAn getMonAn() {
		return monAn;
	}
	public void setMonAn(MonAn monAn) {
		this.monAn = monAn;
	}
	public PhieuDatBan getPhieuDatBan() {
		return phieuDatBan;
	}
	public void setPhieuDatBan(PhieuDatBan phieuDatBan) {
		this.phieuDatBan = phieuDatBan;
	}
	public int getSoLuong() {
		return soLuong;
	}
	public void setSoLuong(int soLuong) {
		this.soLuong = soLuong;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	
}
