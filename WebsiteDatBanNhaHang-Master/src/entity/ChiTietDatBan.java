package entity;

import java.io.Serializable;
import java.time.LocalDateTime;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.ForeignKey;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import org.hibernate.annotations.Cascade;

@Entity
@IdClass(ChiTietDatBanPK.class)
public class ChiTietDatBan implements Serializable{
	
	
	@Id
	@ManyToOne
	@JoinColumn(name="maPhieuDatBan", foreignKey= @ForeignKey)
	private PhieuDatBan phieuDatBan;
	@Id
	@ManyToOne
	@JoinColumn(name= "maBan")
	private Ban ban;
	
	
public ChiTietDatBan() {
	// TODO Auto-generated constructor stub
}


public ChiTietDatBan(PhieuDatBan phieuDatBan, Ban ban) {
	super();
	this.phieuDatBan = phieuDatBan;
	this.ban = ban;
}


public PhieuDatBan getPhieuDatBan() {
	return phieuDatBan;
}


public void setPhieuDatBan(PhieuDatBan phieuDatBan) {
	this.phieuDatBan = phieuDatBan;
}


public Ban getBan() {
	return ban;
}


public void setBan(Ban ban) {
	this.ban = ban;
}



}
