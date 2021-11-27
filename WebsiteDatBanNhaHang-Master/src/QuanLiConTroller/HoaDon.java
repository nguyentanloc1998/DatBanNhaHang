package QuanLiConTroller;

import java.awt.Desktop;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Chunk;
import com.itextpdf.text.Document;
import com.itextpdf.text.Element;
import com.itextpdf.text.Font;
import com.itextpdf.text.FontFactory;
import com.itextpdf.text.PageSize;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.pdf.BaseFont;
import com.itextpdf.text.pdf.CMYKColor;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;

import dao.BanDAO;
import dao.HoaDonDAO;
import entity.Ban;
import entity.PhieuDatBan;
import entity.TaiKhoan;
import entity.main;

/**
 * Servlet implementation class HoaDon
 */
@WebServlet("/HoaDon")
public class HoaDon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public HoaDon() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		TaiKhoan tk = (TaiKhoan) session.getAttribute("userLogin");
		if(tk==null) {
			response.sendRedirect(request.getContextPath()+"/Login");
			return;
		}else if(tk.getLoaiTaiKhoan().equals("Khach Hang")) {
			response.sendRedirect(request.getContextPath()+"/");
			return;
		}
		
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		HoaDonDAO hdDAO = new HoaDonDAO();
		List<entity.HoaDon> dsHoaDon = new ArrayList<entity.HoaDon>();
		dsHoaDon = hdDAO.getAll(entity.HoaDon.class);
		request.setAttribute("dsHoaDon", dsHoaDon);
		RequestDispatcher dispatcher= getServletContext().getRequestDispatcher("/nhanvien/pages/invoice/invoicelist.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=UTF-8");
		HttpSession session = request.getSession();
		TaiKhoan tk = new TaiKhoan();
		tk = (TaiKhoan) session.getAttribute("userLogin");
		String strAction = request.getParameter("action");
		System.out.println(strAction);
		if(strAction != null && !strAction.equals("")) {

		}if(strAction.equals("In HD")) {
			HoaDonDAO hdDAO = new HoaDonDAO();
			entity.HoaDon hd = hdDAO.getById(entity.HoaDon.class, Integer.parseInt(request.getParameter("mahd")));
			BanDAO bdao = new BanDAO();
			PhieuDatBan phieuDatBan = new PhieuDatBan();
		   phieuDatBan = hd.getPhieuDatBan();
			if(phieuDatBan.getListChiTietDatBan()!=null) {
				for(int i = 0;i<phieuDatBan.getListChiTietDatBan().size();i++) {
					entity.Ban ban = new Ban();
					ban=phieuDatBan.getListChiTietDatBan().get(i).getBan();
					ban.setTrangThai("Bàn Trống");
					bdao.update(ban);
					phieuDatBan.getListChiTietDatBan().get(i).getBan().setTrangThai("Bàn Trống");
				}
			}
			hd=phieuDatBan.getHoaDon();
			hd.setTrangThai("Đã Thanh Toán");
			hd.setNguoiDung(tk.getNguoiDung());
			hd.setNgayLap(LocalDate.now());
			phieuDatBan.setHoaDon(hd);
			hd.setPhieuDatBan(phieuDatBan);
			hdDAO.update(hd);
			InHoaDonPDF(hd);
			response.setContentType("text/htmlcharset=UTF-8");
			response.sendRedirect(request.getContextPath()+"/HoaDon");
			return;
		}
	}
	public void InHoaDonPDF(entity.HoaDon hd) {
		Document document = new Document(PageSize.A5, 50, 50, 50, 50);	
		try {
			PdfWriter.getInstance(document, new FileOutputStream("C:\\Users\\Dell\\Desktop\\inhoadon\\hoadon.pdf"));

			document.open();
			// Thêm nội dung sử dụng add function
			//	document.add(new Paragraph("Hóa Đơn"),FontFactory.getFont(FontFactory.HELVETICA, 18, Font.BOLDITALIC, new CMYKColor(0, 255, 255, 17)));
			BaseFont courier = BaseFont.createFont("C:\\Windows\\Fonts\\timesbd.ttf" ,BaseFont.IDENTITY_H, BaseFont.EMBEDDED);
			Font fTitle = new Font(courier,30,Font.BOLD,BaseColor.RED);
			Font fsubTitle = new Font(courier,18);
		    Font fText = new Font(courier,10,Font.NORMAL);
			Paragraph title1 = new Paragraph("Hóa Đơn",fTitle);
			
			title1.setAlignment(Element.ALIGN_CENTER);
			document.add(title1);
			document.add(new Paragraph("Mã Hóa Đơn: #"+hd.getMaHoaDon()+"",fsubTitle));
			document.add(new Paragraph("Khách Hàng: "+hd.getPhieuDatBan().getKhachdatban().getHoTen()+"",fsubTitle));
			document.add(new Paragraph("So Dien Thoai: "+hd.getPhieuDatBan().getKhachdatban().getSoDT()+"",fsubTitle));
			document.add(new Paragraph("Ngày In HD: "+LocalDate.now()+"",fsubTitle));
			document.add(new Paragraph("         "));
			document.add(new Paragraph("         "));
			document.add(new Paragraph("Bàn Đã Chọn: ",fsubTitle));

			Phrase phrase = new Phrase();
			hd.getPhieuDatBan().getListChiTietDatBan().forEach(e->{
				Chunk chunk = new Chunk(e.getBan().getTenBan()+"  ",fsubTitle);
				phrase.add(chunk);
			}
					);
			document.add(phrase);

			PdfPTable t = new PdfPTable(5);
			t.setSpacingBefore(25);
			t.setSpacingAfter(25);
			
			PdfPCell c1 = new PdfPCell(new Phrase("STT",fText));
			
			t.addCell(c1);
			PdfPCell c2 = new PdfPCell(new Phrase("Tên Món Ăn",fText));
			t.addCell(c2);
			PdfPCell c3 = new PdfPCell(new Phrase("Số Lượng",fText));
			PdfPCell c4 = new PdfPCell(new Phrase("Đơn Giá",fText));
			PdfPCell c5 = new PdfPCell(new Phrase("Tổng Tiền",fText));
			
			t.addCell(c3);
			t.addCell(c4);
			t.addCell(c5);

			if(hd.getPhieuDatBan().getListChiTietDatMon()!=null) {
				for(int i=0;i<hd.getPhieuDatBan().getListChiTietDatMon().size();i++) {
					int stt = i+1;
					t.addCell(new Phrase(""+stt,fText));
					t.addCell(new Phrase(""+hd.getPhieuDatBan().getListChiTietDatMon().get(i).getMonAn().getTenMonAn(),fText));
					t.addCell(""+hd.getPhieuDatBan().getListChiTietDatMon().get(i).getSoLuong());
					t.addCell(""+hd.getPhieuDatBan().getListChiTietDatMon().get(i).getMonAn().getDonGia());
					t.addCell(""+hd.getPhieuDatBan().getListChiTietDatMon().get(i).getThanhtien());
				}
			}
			document.add(t);
			Paragraph tc = new Paragraph("Tổng Cộng: "+hd.getTongTien()+" VND",fsubTitle);
			tc.setAlignment(Element.ALIGN_RIGHT);
			document.add(tc);
			// Đóng File
			document.close();
			Desktop desktop = Desktop.getDesktop();
			desktop.open(new File("C:\\Users\\Qui\\Desktop\\PDF\\HoaDon.pdf"));
		} catch (Exception e) {
			System.out.println(e);
		}

	}


}
