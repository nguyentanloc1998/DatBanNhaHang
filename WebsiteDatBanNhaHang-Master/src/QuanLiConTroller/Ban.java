package QuanLiConTroller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
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
import entity.KhuVuc;
import entity.TaiKhoan;

/**
 * Servlet implementation class Ban
 */
@WebServlet("/Ban")
public class Ban extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Ban() {
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
		BanDAO bDAO = new BanDAO();
		List<entity.Ban> dsBan = new ArrayList<entity.Ban>();
		dsBan = bDAO.getAll(entity.Ban.class);
		KhuVucDAO kvDAO = new KhuVucDAO();
		List<KhuVuc> dsKhuVuc = new ArrayList<KhuVuc>();
		dsKhuVuc = kvDAO.getAll(KhuVuc.class);
		request.setAttribute("dsKhuVuc", dsKhuVuc);
		request.setAttribute("dsBan", dsBan);
		RequestDispatcher dispatcher= getServletContext().getRequestDispatcher("/nhanvien/pages/ban/danhsachban.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=UTF-8");
		String strAction = request.getParameter("action");
		if(strAction != null && !strAction.equals("")) {
			
			}if(strAction.equals("Update")) {
				
				UpdateBan(request,response);
			}if(strAction.equals("Delete")) {
				DeleteBan(request,response);
			}
	}

	private void DeleteBan(HttpServletRequest request, HttpServletResponse response) {
		BanDAO bdao = new BanDAO();
		entity.Ban ban = new entity.Ban();
		ban = bdao.getById(entity.Ban.class, Integer.parseInt(request.getParameter("maban")));
		ban.setTrangThai("Đã Hủy");
		bdao.update(ban);
		try {
			response.sendRedirect(request.getContextPath()+"/Ban");
			return;
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	private void UpdateBan(HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
		
		entity.Ban ban = new entity.Ban();
		BanDAO bDAO = new BanDAO();
		KhuVucDAO khuVucDAO = new KhuVucDAO();
		int maban = Integer.parseInt(request.getParameter("maban"));
		KhuVuc kv = new KhuVuc();
		kv = khuVucDAO.getById(KhuVuc.class,Integer.parseInt( request.getParameter("khuvuc")));
		ban = bDAO.getById(entity.Ban.class, maban);
		ban.setTenBan(request.getParameter("tenban"));
		ban.setSoChoNgoi(Integer.parseInt(request.getParameter("songuoi")));
		ban.setTrangThai(request.getParameter("trangthai"));
		ban.setKhuVuc(kv);
		bDAO.update(ban);
		try {
			
			response.sendRedirect(request.getContextPath()+"/Ban");
			return;
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
