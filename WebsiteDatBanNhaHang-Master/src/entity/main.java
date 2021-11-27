package entity;

import java.awt.Desktop;
import java.io.File;
import java.io.FileOutputStream;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.Iterator;
import java.util.concurrent.Phaser;


import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

//import com.itextpdf.text.Anchor;
//import com.itextpdf.text.Chunk;
//import com.itextpdf.text.Document;
//import com.itextpdf.text.DocumentException;
//import com.itextpdf.text.Element;
//import com.itextpdf.text.Font;
//import com.itextpdf.text.FontFactory;
//import com.itextpdf.text.PageSize;
//import com.itextpdf.text.Paragraph;
//import com.itextpdf.text.Phrase;
//import com.itextpdf.text.pdf.CMYKColor;
//import com.itextpdf.text.pdf.PdfPCell;
//import com.itextpdf.text.pdf.PdfPTable;
//import com.itextpdf.text.pdf.PdfWriter;

import dao.AccoutDAO;
import dao.ChiTietDatBanDAO;
import dao.ChiTietHoaDonDAO;
import dao.HoaDonDAO;
import dao.MyEntityManagerFactory;
import dao.NguoiDungDAO;
import dao.PhieuDatBanDAO;


public class main {	
public static void main(String[] args) {
	EntityManager em = MyEntityManagerFactory.getInstance().getEntityManager();
	//AccoutDAO acdao = new AccoutDAO();
	//TaiKhoan tk = new TaiKhoan();
//	tk.setTenDangNhap("ntt");
//	tk.setMatKhau("123");
//	System.out.println(LocalDate.now());
//	System.out.println(acdao.LoginAccount(tk));
	//System.out.println(acdao.getUserByUsername("nttunique").getMatKhau());
	//PhieuDatBanDAO pdb = new PhieuDatBanDAO();
	//pdb.getAll(PhieuDatBan.class).forEach(e->System.out.println(e.getHoaDon().getTrangThai()));
	//PhieuDatBan phieuDatBan = pdb.getById(PhieuDatBan.class, 2);
//	System.out.println(phieuDatBan.getListChiTietDatMon().get(0).getThanhtien());
//	NguoiDungDAO ngDAO = new NguoiDungDAO();
//	System.out.println(ngDAO.getDsNguoiDung().get(0).getTenDangNhap());
//	HoaDonDAO hdDAO = new HoaDonDAO();
//	ChiTietHoaDonDAO dao = new ChiTietHoaDonDAO();
//	System.out.println(dao.deleteCTDM(new ChiTietDatMonAn()));
	//HoaDon hd = hdDAO.getById(HoaDon.class, 1);
	//System.out.println(pdb.getById(PhieuDatBan.class, 3).getHoaDon().getTrangThai());
//	DateTimeFormatter sdt = new Date("HH:mm")
//	System.out.println(LocalTime.now().format(DateTimeFormatter.ofPattern("HH:mm")));
	//InHoaDonPDF(hdDAO.getById(HoaDon.class, 1));
//	System.out.println(hdDAO.getAll(HoaDon.class).get(0).getTongTien());
//	ChiTietDatBanDAO ctdbDAo = new ChiTietDatBanDAO();
//	System.out.println(ctdbDAo.deleteCTDB(phieuDatBan.getListChiTietDatBan().get(0)));
	//System.out.println(pdb.getById(PhieuDatBan.class,4).getListChiTietDatMon().get(0).getMonAn().getTenMonAn());
//	KhuVucDao kvd = new KhuVucImpls();
//	KhuVuc k = new KhuVuc("1", "a", null);
//	kvd.addkv(k);
}
//public static void InHoaDonPDF(entity.HoaDon hd) {
//	Document document = new Document(PageSize.A4, 50, 50, 50, 50);	
//	try {
//		PdfWriter.getInstance(document, new FileOutputStream("C:\\Users\\Qui\\Desktop\\PDF\\HoaDon.pdf"));
//		
//		document.open();
//		// Thêm nội dung sử dụng add function
//	//	document.add(new Paragraph("Hóa Đơn"),FontFactory.getFont(FontFactory.HELVETICA, 18, Font.BOLDITALIC, new CMYKColor(0, 255, 255, 17)));
//		Paragraph title1 = new Paragraph("Hóa Don",
//		FontFactory.getFont(FontFactory.HELVETICA, 28, Font.BOLDITALIC, new CMYKColor(0, 255, 255, 17)));
//		title1.setAlignment(Element.ALIGN_CENTER);
//		document.add(title1);
//		document.add(new Paragraph("Ma Hoa Don: #"+hd.getMaHoaDon()+""));
//		document.add(new Paragraph("Khách Hàng: "+hd.getNguoiDung().getHoTen()+""));
//		document.add(new Paragraph("So Dien Thoai: "+hd.getNguoiDung().getSoDT()+""));
//		document.add(new Paragraph("Ngay In HD: "+LocalDate.now()+""));
//		document.add(new Paragraph("         "));
//		document.add(new Paragraph("         "));
//		
//		
//		
//		Phrase phrase = new Phrase();
//		hd.getPhieuDatBan().getListChiTietDatBan().forEach(e->{
//				Chunk chunk = new Chunk(e.getBan().getTenBan()+" ");
//				phrase.add(chunk);
//		}
//			);
//		document.add(phrase);
//
//		PdfPTable t = new PdfPTable(5);
//		t.setSpacingBefore(25);
//		t.setSpacingAfter(25);
//
//		PdfPCell c1 = new PdfPCell(new Phrase("STT"));
//		t.addCell(c1);
//		PdfPCell c2 = new PdfPCell(new Phrase("Ten Mon An"));
//		t.addCell(c2);
//		PdfPCell c3 = new PdfPCell(new Phrase("So Luong"));
//		PdfPCell c4 = new PdfPCell(new Phrase("Don Gia"));
//		PdfPCell c5 = new PdfPCell(new Phrase("Tong Tien"));
//		t.addCell(c3);
//		t.addCell(c4);
//		t.addCell(c5);
//
//		
//		for(int i=0;i<hd.getPhieuDatBan().getListChiTietDatMon().size();i++) {
//			int stt = i+1;
//			t.addCell(""+stt);
//			t.addCell(""+hd.getPhieuDatBan().getListChiTietDatMon().get(i).getMonAn().getTenMonAn());
//			t.addCell(""+hd.getPhieuDatBan().getListChiTietDatMon().get(i).getSoLuong());
//			t.addCell(""+hd.getPhieuDatBan().getListChiTietDatMon().get(i).getMonAn().getDonGia());
//			t.addCell(""+hd.getPhieuDatBan().getListChiTietDatMon().get(i).getThanhtien());
//		
//		}
//		document.add(t);
//		Paragraph tc = new Paragraph("Tong Cong: "+hd.getTongTien()+" VND");
//				tc.setAlignment(Element.ALIGN_RIGHT);
//				document.add(tc);
//		// Đóng File
//		document.close();
//		Desktop desktop = Desktop.getDesktop();
//		desktop.open(new File("C:\\Users\\Qui\\Desktop\\PDF\\HoaDon.pdf"));
//		} catch (Exception e) {
//		System.out.println(e);
//		}
//}

}
