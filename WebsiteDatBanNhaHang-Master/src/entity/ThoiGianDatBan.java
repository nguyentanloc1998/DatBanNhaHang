package entity;

import java.io.Serializable;
import java.time.LocalDate;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity
public class ThoiGianDatBan implements Serializable{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer mathoiGian;
	private LocalDate ngayDat;
	@Column(columnDefinition = "nvarchar(255)")
	private String gioDat;
	
	@OneToMany(mappedBy = "thoiGianDatBan",cascade = CascadeType.ALL)
	private List<PhieuDatBan> dsPhieuDatBan ;
	
	
	public ThoiGianDatBan() {
		super();
	}


	public ThoiGianDatBan(Integer mathoiGian, LocalDate ngayDat, String gioDat, List<PhieuDatBan> dsPhieuDatBan) {
		super();
		this.mathoiGian = mathoiGian;
		this.ngayDat = ngayDat;
		this.gioDat = gioDat;
		this.dsPhieuDatBan = dsPhieuDatBan;
	}


	public Integer getMathoiGian() {
		return mathoiGian;
	}


	public void setMathoiGian(Integer mathoiGian) {
		this.mathoiGian = mathoiGian;
	}


	public LocalDate getNgayDat() {
		return ngayDat;
	}


	public void setNgayDat(LocalDate ngayDat) {
		this.ngayDat = ngayDat;
	}


	public String getGioDat() {
		return gioDat;
	}


	public void setGioDat(String gioDat) {
		this.gioDat = gioDat;
	}


	public List<PhieuDatBan> getDsPhieuDatBan() {
		return dsPhieuDatBan;
	}


	public void setDsPhieuDatBan(List<PhieuDatBan> dsPhieuDatBan) {
		this.dsPhieuDatBan = dsPhieuDatBan;
	}


	@Override
	public String toString() {
		return "ThoiGianDatBan [mathoiGian=" + mathoiGian + ", ngayDat=" + ngayDat + ", gioDat=" + gioDat
				+ ", dsPhieuDatBan=" + dsPhieuDatBan + "]";
	}

}
