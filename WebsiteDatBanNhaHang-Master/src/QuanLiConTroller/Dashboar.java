package QuanLiConTroller;

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

import dao.AccoutDAO;
import dao.HoaDonDAO;
import dao.MonAnDAO;
import entity.HoaDon;
import entity.MonAn;
import entity.TaiKhoan;

/**
 * Servlet implementation class Dashboar
 */
@WebServlet("/Dashboar")
public class Dashboar extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Dashboar() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		TaiKhoan tk = (TaiKhoan) session.getAttribute("userLogin");
		if(tk==null) {
			response.sendRedirect(request.getContextPath()+"/Login");
			return;
		}else if(tk.getLoaiTaiKhoan().equals("Khách Hàng")) {
			response.sendRedirect(request.getContextPath()+"/");
			return;
		}
		AccoutDAO acDAO = new  AccoutDAO();
		List<TaiKhoan> dsTK = acDAO.getAll(TaiKhoan.class);
		int slTaiKhoan = 0;
		
		for(TaiKhoan a : dsTK) {
			if(a.getLoaiTaiKhoan().equals("Khách Hàng")) {
				slTaiKhoan++;
			}
		}
		HoaDonDAO hoaDonDAO = new HoaDonDAO();
		Long tongtien = 0l;
		Long doanhthuhomnay = 0l;
		for(HoaDon hd: hoaDonDAO.HoaDonHomNay(LocalDate.now())) {
			doanhthuhomnay+=hd.getTongTien();
		//	System.out.println(doanhthuhomnay);
		}
		List<HoaDon> dsHoaDonDaXacNhan = new ArrayList<HoaDon>();
		dsHoaDonDaXacNhan = hoaDonDAO.SoLuongHoaDonDaXacNhan();
	//	System.out.println(dsHoaDonDaXacNhan);
		for(HoaDon hd: dsHoaDonDaXacNhan) {
			tongtien += hd.getTongTien();
			
		}
		request.setAttribute("slTK", slTaiKhoan);
		request.setAttribute("slHDXN", hoaDonDAO.SoLuongPDB().size());
		request.setAttribute("slMA", new MonAnDAO().getAll(MonAn.class).size());
		request.setAttribute("tongtien", tongtien);
		request.setAttribute("doanhthuhomnay", doanhthuhomnay);
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		RequestDispatcher dispatcher= getServletContext().getRequestDispatcher("/nhanvien/index.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
