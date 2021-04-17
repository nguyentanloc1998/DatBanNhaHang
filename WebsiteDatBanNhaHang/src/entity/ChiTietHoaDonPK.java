package entity;

import java.io.Serializable;

import javax.persistence.Embeddable;

@Embeddable
public class ChiTietHoaDonPK implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1455564219266222305L;
	/**
	 * 
	 */
	private String hoaDon;
	private String monAn;
	
	
	public ChiTietHoaDonPK() {
		// TODO Auto-generated constructor stub
	}


	public ChiTietHoaDonPK(String hoaDon, String monAn) {
		super();
		this.hoaDon = hoaDon;
		this.monAn = monAn;
	}


	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((hoaDon == null) ? 0 : hoaDon.hashCode());
		result = prime * result + ((monAn == null) ? 0 : monAn.hashCode());
		return result;
	}


	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		ChiTietHoaDonPK other = (ChiTietHoaDonPK) obj;
		if (hoaDon == null) {
			if (other.hoaDon != null)
				return false;
		} else if (!hoaDon.equals(other.hoaDon))
			return false;
		if (monAn == null) {
			if (other.monAn != null)
				return false;
		} else if (!monAn.equals(other.monAn))
			return false;
		return true;
	}
	
	



	
	

	
}
