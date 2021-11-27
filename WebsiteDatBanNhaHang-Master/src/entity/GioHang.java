package entity;

public class GioHang {
	private int maMonAn;
	private String tenMonAn;
	private int soluong;
	private long dongia;
	private String urlHinhAnh;
	private long tongtien;
	
	
	

	public GioHang(int maMonAn, String tenMonAn, int soluong, long dongia, String urlHinhAnh) {
		super();
		this.maMonAn = maMonAn;
		this.tenMonAn = tenMonAn;
		this.soluong = soluong;
		this.dongia = dongia;
		this.urlHinhAnh = urlHinhAnh;
		this.tongtien = soluong*dongia;
	}

	public long getDongia() {
		return dongia;
	}

	public void setDongia(long dongia) {
		this.dongia = dongia;
	}

	public GioHang() {
		super();
	}
	
	public String getTenMonAn() {
		return tenMonAn;
	}

	public void setTenMonAn(String tenMonAn) {
		this.tenMonAn = tenMonAn;
	}

	public String getUrlHinhAnh() {
		return urlHinhAnh;
	}
	public void setUrlHinhAnh(String urlHinhAnh) {
		this.urlHinhAnh = urlHinhAnh;
	}
	public int getMaMonAn() {
		return maMonAn;
	}
	public void setMaMonAn(int maMonAn) {
		this.maMonAn = maMonAn;
	}
	public int getSoluong() {
		return soluong;
	}
	public void setSoluong(int soluong) {
		this.soluong = soluong;
	}
	public long getTongtien() {
		return soluong*dongia;
	}
	public void setTongtien(long tongtien) {
		this.tongtien = soluong*dongia;
	}
	@Override
	public String toString() {
		return "GioHang [maMonAn=" + maMonAn + ", soluong=" + soluong + ", urlHinhAnh=" + urlHinhAnh + ", tongtien="
				+ tongtien + "]";
	}
	
	
	
}
