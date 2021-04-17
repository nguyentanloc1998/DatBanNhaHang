package entity;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
@Entity
@IdClass(ChiTietHoaDonPK.class)
public class ChiTietHoaDon implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -7135896440568913673L;
	
	@Id
	@ManyToOne
	@JoinColumn(name="maMonAn")
	private	MonAn monAn;
	@Id
	@ManyToOne
	@JoinColumn(name="maHoaDon")
	private HoaDon hoaDon;
	private int soLuong;
	
	public ChiTietHoaDon() {
		// TODO Auto-generated constructor stub
	}
	
}
