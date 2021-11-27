package CustomerController;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.AccoutDAO;
import entity.NguoiDung;
import entity.TaiKhoan;

/**
 * Servlet implementation class Register
 */
@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Register() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		request.getRequestDispatcher("/dangky.jsp").forward(request, response);
	}

	/**
	 * 	 HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		String username = request.getParameter("taikhoan");
		String pass = request.getParameter("pass");
		String pass1 = request.getParameter("pass1");
		String hoten = request.getParameter("hoten");
		String sdt = request.getParameter("sdt");
		String email = request.getParameter("email");
		String diachi = request.getParameter("diachi");
		System.out.println(hoten);
	//	System.out.println(checkusername(username));
		if(checkusername(username)) {
			if(pass.equals(pass1)) {	
				TaiKhoan tk = new TaiKhoan();
				tk.setTenDangNhap(username);
				tk.setMatKhau(pass);
				tk.setLoaiTaiKhoan("Khách Hàng");
				NguoiDung nguoiDung = new NguoiDung();
				nguoiDung.setDiaChi(diachi);
				nguoiDung.setEmail(email);
				nguoiDung.setHoTen(hoten);
				nguoiDung.setSoDT(sdt);
				nguoiDung.setTaikhoan(tk);
				tk.setNguoiDung(nguoiDung);
				AccoutDAO acDAO = new AccoutDAO();
				acDAO.save(tk);
			//	System.out.println(nguoiDung);
				request.getSession().setAttribute("userLogin", tk);
				request.getSession().setAttribute("reGisSucess", 1);
				response.sendRedirect(request.getContextPath()+"/DatBanServlet");
				return;
			}else {
				
				request.getRequestDispatcher("/dangky.jsp").forward(request, response);
				return;
		}
		}else {
			
			request.getRequestDispatcher("/dangky.jsp").forward(request, response);
	}
	}
	private boolean checkusername(String username) {
		AccoutDAO acDAO = new AccoutDAO();
		List<TaiKhoan> dstk = new ArrayList<TaiKhoan>();
		dstk = acDAO.getAll(TaiKhoan.class);
		for(int i = 0; i<dstk.size();i++) {
			if(username.equals(dstk.get(i).getTenDangNhap())){
				return false;
			}
		}

		return true;
	}
}
