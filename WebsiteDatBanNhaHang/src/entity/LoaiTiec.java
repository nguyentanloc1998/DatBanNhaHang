package entity;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
@Entity
public class LoaiTiec implements Serializable {
	@Id
	private String maLoaiTiec;
	private String tenLoaiTiec;
	
	@OneToMany(mappedBy = "loaiTiec")
	private List<PhieuDatBan> listphieuDatBan;
	public LoaiTiec() {
		// TODO Auto-generated constructor stub
	}

}
