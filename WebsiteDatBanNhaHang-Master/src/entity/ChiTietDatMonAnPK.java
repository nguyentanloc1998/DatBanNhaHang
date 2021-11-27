package entity;

import java.io.Serializable;

import javax.persistence.Embeddable;

@Embeddable
public class ChiTietDatMonAnPK implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1455564219266222305L;
	/**
	 * 
	 */
	private Integer phieuDatBan;
	private Integer monAn;
	
	public ChiTietDatMonAnPK() {
		super();
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((phieuDatBan == null) ? 0 : phieuDatBan.hashCode());
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
		ChiTietDatMonAnPK other = (ChiTietDatMonAnPK) obj;
		if (phieuDatBan == null) {
			if (other.phieuDatBan != null)
				return false;
		} else if (!phieuDatBan.equals(other.phieuDatBan))
			return false;
		if (monAn == null) {
			if (other.monAn != null)
				return false;
		} else if (!monAn.equals(other.monAn))
			return false;
		return true;
	}
	
	

	
}
