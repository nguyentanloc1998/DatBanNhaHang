package entity;

import java.io.Serializable;

import javax.persistence.Embeddable;
@Embeddable
public class ChiTietDatBanPK implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 9073301388287872840L;
	
	private String phieuDatBan;
	private String ban;
	
	
	
	
	public ChiTietDatBanPK() {
		// TODO Auto-generated constructor stub
	}




	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((ban == null) ? 0 : ban.hashCode());
		result = prime * result + ((phieuDatBan == null) ? 0 : phieuDatBan.hashCode());
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
		ChiTietDatBanPK other = (ChiTietDatBanPK) obj;
		if (ban == null) {
			if (other.ban != null)
				return false;
		} else if (!ban.equals(other.ban))
			return false;
		if (phieuDatBan == null) {
			if (other.phieuDatBan != null)
				return false;
		} else if (!phieuDatBan.equals(other.phieuDatBan))
			return false;
		return true;
	}
	
	

}
