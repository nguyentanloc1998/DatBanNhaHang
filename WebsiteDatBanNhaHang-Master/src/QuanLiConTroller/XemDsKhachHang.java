package QuanLiConTroller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MonAnDAO;
import dao.NguoiDungDAO;
import entity.MonAn;
import entity.NguoiDung;
import entity.TaiKhoan;

/**
 * Servlet implementation class XemDsKhachHang
 */
@WebServlet("/XemDsKhachHang")
public class XemDsKhachHang extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public XemDsKhachHang() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
HttpSession session = request.getSession();
response.setContentType("text/html; charset=UTF-8");
request.setCharacterEncoding("UTF-8");
		TaiKhoan tk = (TaiKhoan) session.getAttribute("userLogin");
		if(tk==null) {
			response.sendRedirect(request.getContextPath()+"/Login");
			return;
		}else if(tk.getLoaiTaiKhoan().equals("Khách Hàng")) {
			response.sendRedirect(request.getContextPath()+"/");
			return;
		}
		NguoiDungDAO ndDAO = new NguoiDungDAO();
		List<TaiKhoan> dsTK = new ArrayList<TaiKhoan>();
		dsTK = ndDAO.getDsNguoiDung();
		
		request.setAttribute("dsTK", dsTK);
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		request.getRequestDispatcher("/nhanvien/pages/customer/danhsachkhachhang.jsp").forward(request, response);	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
