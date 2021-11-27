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
public class KhuVuc implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	
	private Integer maKhuVuc;
	@Column(columnDefinition = "nvarchar(255)")
	private String tenKhuVuc;
	
	
	
	@OneToMany(mappedBy = "khuVuc",cascade=CascadeType.ALL)
	private List<Ban> ban;
	
	
	
	public KhuVuc(Integer maKhuVuc, String tenKhuVuc, List<Ban> ban) {
		super();
		this.maKhuVuc = maKhuVuc;
		this.tenKhuVuc = tenKhuVuc;
		this.ban = ban;
	}



	public KhuVuc() {
		// TODO Auto-generated constructor stub
	}



	public Integer getMaKhuVuc() {
		return maKhuVuc;
	}



	public void setMaKhuVuc(Integer maKhuVuc) {
		this.maKhuVuc = maKhuVuc;
	}



	public String getTenKhuVuc() {
		return tenKhuVuc;
	}



	public void setTenKhuVuc(String tenKhuVuc) {
		this.tenKhuVuc = tenKhuVuc;
	}
	public List<Ban> getBan() {
		return ban;
	}



	public void setBan(List<Ban> ban) {
		this.ban = ban;
	}
	
	
	
}
