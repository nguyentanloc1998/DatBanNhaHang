package entity;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class KhuVuc implements Serializable {
	@Id
	private String maKhuVuc;
	private String tenKhuVuc;
	private String phiKhuVuc;
	
	
	@OneToMany(mappedBy = "khuVuc")
	private List<Ban> ban;
	
	public KhuVuc() {
		// TODO Auto-generated constructor stub
	}
	
}
