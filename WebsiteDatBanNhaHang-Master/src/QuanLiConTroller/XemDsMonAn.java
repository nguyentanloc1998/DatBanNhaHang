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

import dao.HoaDonDAO;
import dao.LoaiMonAnDAO;
import dao.MonAnDAO;
import dao.PhieuDatBanDAO;
import entity.HoaDon;
import entity.LoaiMonAn;
import entity.MonAn;
import entity.PhieuDatBan;
import entity.TaiKhoan;

/**
 * Servlet implementation class XemDsMonAn
 */
@WebServlet("/XemDsMonAn")
public class XemDsMonAn extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public XemDsMonAn() {
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
		LoaiMonAnDAO lmaDAO = new LoaiMonAnDAO();
		MonAnDAO monAnDAO = new MonAnDAO();
		List<MonAn> dsMonAn = new ArrayList<MonAn>();
		List<LoaiMonAn> dsLoaiMon = new ArrayList<LoaiMonAn>();
		dsLoaiMon = lmaDAO.getAll(LoaiMonAn.class);
		dsMonAn = monAnDAO.getAll(MonAn.class);
		request.setAttribute("dsLoaiMon", dsLoaiMon);
		request.setAttribute("dsMonAn", dsMonAn);
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		request.getRequestDispatcher("/nhanvien/pages/product/productlist.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String strAction = request.getParameter("action");
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		if(strAction != null && !strAction.equals("")) {
			
			}if(strAction.equals("Delete")) {
				DeletePhieuDat(request,response);
			}
	}
	private void DeletePhieuDat(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		String maMonAn = request.getParameter("idMonAn");
		MonAnDAO maDAO = new MonAnDAO();
		MonAn monAn = new MonAn();
		monAn = maDAO.getById(MonAn.class, Integer.parseInt(maMonAn));
		monAn.setTrangThai("Ngừng Bán");
		maDAO.update(monAn);
		response.setContentType("text/htmlcharset=UTF-8");
		response.sendRedirect(request.getContextPath()+"/XemDsMonAn");
		return;
	}

}
