package entity;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class LoaiMonAn implements Serializable {
	@Id
	private String maLoaiMonAn;
	private String tenLoaiMonAn;
	
	@OneToMany(mappedBy = "loaiMonAn")
	private List<MonAn> listMonAn;
	
	public LoaiMonAn() {
		// TODO Auto-generated constructor stub
	}
}
