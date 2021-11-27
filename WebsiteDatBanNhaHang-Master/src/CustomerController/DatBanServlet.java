package CustomerController;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.sql.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import javax.persistence.EntityManager;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.GioHangDAO;
import dao.HoaDonDAO;
import dao.MonAnDAO;
import dao.MyEntityManagerFactory;
import dao.PhieuDatBanDAO;
import dao.ThoiGianDatBanDAO;
import entity.HoaDon;
import entity.MonAn;
import entity.NguoiDung;
import entity.PhieuDatBan;
import entity.TaiKhoan;
import entity.ThoiGianDatBan;

/**
 * Servlet implementation class DatBanServlet
 */
@WebServlet("/DatBanServlet")
public class DatBanServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DatBanServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)  {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		response.setContentType("text/html;charset=UTF-8");
		TaiKhoan user =  (TaiKhoan) session.getAttribute("userLogin");
		
		if(user==null) {
			try {
				response.sendRedirect(request.getContextPath()+"/Login");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return;
		}
		
		try {
			request.getRequestDispatcher("/reservation.jsp").forward(request, response);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		EntityManager em = MyEntityManagerFactory.getInstance().getEntityManager();
	}

	/**
	 * @throws UnsupportedEncodingException 
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
String strAction = request.getParameter("action");
		if(strAction != null && !strAction.equals("")) {
			if(strAction.equals("Chon")) {
				try {
					request.setCharacterEncoding("UTF-8");
				} catch (UnsupportedEncodingException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				HttpSession session = request.getSession();
				TaiKhoan tk = (TaiKhoan) session.getAttribute("userLogin");
				String ngayden = request.getParameter("ngaydat");
				DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
				LocalDate date = LocalDate.parse(ngayden, formatter);
				String gioden = request.getParameter("time");
				String songuoi = request.getParameter("songuoi");
				String ghichu = request.getParameter("ghichu");
				String loaiTiec = request.getParameter("loaitiec");
				PhieuDatBan phieuDatBan = new PhieuDatBan();
				ThoiGianDatBan thoiGianDatBan = new ThoiGianDatBan();
				ThoiGianDatBan thoiGianDatBan1 = new ThoiGianDatBan();
				phieuDatBan.setKhachdatban(tk.getNguoiDung());
				phieuDatBan.setLoaiTiec(loaiTiec);
				phieuDatBan.setGhiChu(ghichu);
				phieuDatBan.setSoNguoi(Integer.parseInt(songuoi));
				ThoiGianDatBanDAO tgdbDAO = new ThoiGianDatBanDAO(); 
				thoiGianDatBan.setGioDat(gioden);
				thoiGianDatBan.setNgayDat(date);
				thoiGianDatBan1 = tgdbDAO.getUserByThoiGian(thoiGianDatBan);
				if(thoiGianDatBan1==null) {
				phieuDatBan.setThoiGianDatBan(thoiGianDatBan);
				}else {
					phieuDatBan.setThoiGianDatBan(thoiGianDatBan1);
				}
				
				System.out.println(phieuDatBan.getLoaiTiec());
				session.setAttribute("phieuDat", phieuDatBan);
				try {
					response.sendRedirect(request.getContextPath()+"/ChonMonAnServlet");
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}			
						return;
			}else if(strAction.equals("Ko")) {
			
				HttpSession session = request.getSession();
				TaiKhoan tk = (TaiKhoan) session.getAttribute("userLogin");
			
				try {
					request.setCharacterEncoding("utf-8");
					response.setContentType("text/html; charset=UTF-8");
				} catch (UnsupportedEncodingException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				String ngayden = request.getParameter("ngaydat");
				DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
				LocalDate date = LocalDate.parse(ngayden, formatter);
				String gioden = request.getParameter("time");
				String songuoi = request.getParameter("songuoi");
				String ghichu = request.getParameter("ghichu");
				String loaiTiec = request.getParameter("loaitiec");
				System.out.println(loaiTiec);
				//TaiKhoan user =  (TaiKhoan) session.getAttribute("userLogin");
				PhieuDatBan phieuDatBan = new PhieuDatBan();
				ThoiGianDatBan thoiGianDatBan = new ThoiGianDatBan();
				ThoiGianDatBan thoiGianDatBan1 = new ThoiGianDatBan();
				
				HoaDon hd = new HoaDon();
				hd.setTrangThai("Chờ Xác Nhận");
				phieuDatBan.setGhiChu(ghichu);
				phieuDatBan.setSoNguoi(Integer.parseInt(songuoi));
				phieuDatBan.setLoaiTiec(loaiTiec);
				phieuDatBan.setKhachdatban(tk.getNguoiDung());
				ThoiGianDatBanDAO tgdbDAO = new ThoiGianDatBanDAO(); 
				thoiGianDatBan.setGioDat(gioden);
				thoiGianDatBan.setNgayDat(date);
				thoiGianDatBan1 = tgdbDAO.getUserByThoiGian(thoiGianDatBan);
				if(thoiGianDatBan1==null) {
				phieuDatBan.setThoiGianDatBan(thoiGianDatBan);
				}else {
					phieuDatBan.setThoiGianDatBan(thoiGianDatBan1);
				}
				PhieuDatBanDAO pdbDAO = new PhieuDatBanDAO();
				hd.setPhieuDatBan(phieuDatBan);
				phieuDatBan.setHoaDon(hd);
				pdbDAO.save(phieuDatBan);
				request.getSession().setAttribute("DatBanSucess", 1);
				try {
					
					response.sendRedirect(request.getContextPath()+"/");
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}			
				return;
			}
				}
	}
		
		
	
}
