package dao;

import java.util.ArrayList;


import entity.GioHang;

public class GioHangDAO {
	private ArrayList<GioHang> dsMonAn = new ArrayList<GioHang>();
	private long tongtien;
	
	public void deleteCartItem(String strItemIndex) {
		int iItemIndex = 0;
		try {
			iItemIndex = Integer.parseInt(strItemIndex);
			dsMonAn.remove(iItemIndex - 1);
			calculateOrderTotal();
		} catch (NumberFormatException e) {
			System.out.println("Error while deleting cart item: " + e.getMessage());
			e.printStackTrace();
		}
	}
	public void addCartItem(int maMonAn,String tenMonAn, int soluong,long dongia,String urlHinhAnh) {
			
			long dblTotalCost = 0;
			long dblUnitCost = 0;
		
			GioHang cartItem = new GioHang();
			try {
				dblUnitCost = tongtien;

					cartItem.setMaMonAn(maMonAn);
					cartItem.setSoluong(soluong);
					cartItem.setTenMonAn(tenMonAn);
					cartItem.setUrlHinhAnh(urlHinhAnh);
					cartItem.setDongia(dongia);
					dsMonAn.add(cartItem);
					calculateOrderTotal();
			} catch (NumberFormatException e) {
				System.out.println("Error while parsing from String to primitive types: " + e.getMessage());
				e.printStackTrace();
			}
		}
	public GioHang getCartItem(int iItemIndex) {
		GioHang cartItem = null;
		if(dsMonAn.size() > iItemIndex) {
			cartItem = (GioHang) dsMonAn.get(iItemIndex);
		}
		
		return cartItem;
		
	}

	public ArrayList<GioHang> getDsMonAn() {
		return dsMonAn;
	}
	public void setDsMonAn(ArrayList<GioHang> dsMonAn) {
		this.dsMonAn = dsMonAn;
	}
	public long getTongtien() {
		return tongtien;
	}
	public void setTongtien(long tongtien) {
		this.tongtien = tongtien;
	}
	public void calculateOrderTotal() {
		long dblTotal =  0;
		for (int counter = 0; counter < dsMonAn.size(); counter++) {
			GioHang cartItem = (GioHang) dsMonAn.get(counter);
			dblTotal += cartItem.getTongtien();
		}
		setTongtien(dblTotal);
	}
}
