package entity;

import java.io.Serializable;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class LoaiMonAn implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int maLoaiMonAn;
	@Column(columnDefinition = "nvarchar(255)")
	private String tenLoaiMonAn;
	
	@OneToMany(mappedBy = "loaiMonAn",cascade=CascadeType.ALL)
	private List<MonAn> listMonAn;
	
	public LoaiMonAn() {
		// TODO Auto-generated constructor stub
	}

	public LoaiMonAn(int maLoaiMonAn, String tenLoaiMonAn, List<MonAn> listMonAn) {
		super();
		this.maLoaiMonAn = maLoaiMonAn;
		this.tenLoaiMonAn = tenLoaiMonAn;
		this.listMonAn = listMonAn;
	}

	public int getMaLoaiMonAn() {
		return maLoaiMonAn;
	}

	public void setMaLoaiMonAn(int maLoaiMonAn) {
		this.maLoaiMonAn = maLoaiMonAn;
	}

	public String getTenLoaiMonAn() {
		return tenLoaiMonAn;
	}

	public void setTenLoaiMonAn(String tenLoaiMonAn) {
		this.tenLoaiMonAn = tenLoaiMonAn;
	}

	public List<MonAn> getListMonAn() {
		return listMonAn;
	}

	public void setListMonAn(List<MonAn> listMonAn) {
		this.listMonAn = listMonAn;
	}
	
}
