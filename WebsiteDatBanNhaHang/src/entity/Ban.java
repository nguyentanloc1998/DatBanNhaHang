package entity;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

@Entity
public class Ban implements Serializable{
	@Id
	private String maBan;
	private String tenBan;
	private int soNguoi;
	private String trangThai;
	
	@ManyToOne
	@JoinColumn(name = "maKhuVuc")
	private KhuVuc khuVuc;
	
	@OneToMany(mappedBy = "ban")
	private List<HoaDon> listHoaDon;
	
	public Ban() {
		// TODO Auto-generated constructor stub
	}

		
 
}
