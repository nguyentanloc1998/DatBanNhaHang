package QuanLiConTroller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.BanDAO;
import dao.KhuVucDAO;
import entity.Ban;
import entity.KhuVuc;
import entity.TaiKhoan;

/**
 * Servlet implementation class ThemBan
 */
@WebServlet("/ThemBan")
public class ThemBan extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ThemBan() {
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
		}else if(tk.getLoaiTaiKhoan().equals("Khach Hang")) {
			response.sendRedirect(request.getContextPath()+"/");
			return;
		}
		KhuVucDAO kvDAO = new KhuVucDAO();
		List<KhuVuc> dsKhuVuc = new ArrayList<KhuVuc>();
		dsKhuVuc = kvDAO.getAll(KhuVuc.class);
		
		request.setAttribute("dsKhuVuc", dsKhuVuc);
		RequestDispatcher dispatcher= getServletContext().getRequestDispatcher("/nhanvien/pages/ban/themban.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		String tenban = request.getParameter("tenban");
		String songuoi = request.getParameter("songuoi");
		String khuvuc = request.getParameter("khuvuc");
		String trangthai = request.getParameter("trangthai");
		BanDAO bDAO = new BanDAO();
		Ban ban = new Ban();
		ban.setTenBan(tenban);
		ban.setSoChoNgoi(Integer.parseInt(songuoi));
		ban.setTrangThai(trangthai);
		ban.setKhuVuc(new KhuVucDAO().getById(KhuVuc.class, Integer.parseInt(khuvuc)));
		if(bDAO.save(ban)) {
			response.sendRedirect(request.getContextPath()+"/Ban");
		}
	}

}
