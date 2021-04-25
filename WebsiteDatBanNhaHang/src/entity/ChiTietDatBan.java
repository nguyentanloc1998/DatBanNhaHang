package entity;

import java.io.Serializable;
import java.time.LocalDateTime;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
@IdClass(ChiTietDatBanPK.class)
public class ChiTietDatBan implements Serializable{
	
	
	@Id
	@ManyToOne
	@JoinColumn(name= "maPhieuDatBan")
	private PhieuDatBan phieuDatBan;
	@Id
	@ManyToOne
	@JoinColumn(name= "maBan")
	private Ban ban;
	
	
public ChiTietDatBan() {
	// TODO Auto-generated constructor stub
}
	
}
