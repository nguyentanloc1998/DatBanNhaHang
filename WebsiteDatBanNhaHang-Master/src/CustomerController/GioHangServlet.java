package CustomerController;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.ChiTietHoaDonDAO;
import dao.GioHangDAO;
import dao.HoaDonDAO;
import dao.MonAnDAO;
import dao.PhieuDatBanDAO;
import entity.ChiTietDatMonAn;
import entity.GioHang;
import entity.HoaDon;
import entity.MonAn;
import entity.NguoiDung;
import entity.PhieuDatBan;
import entity.TaiKhoan;

/**
 * Servlet implementation class GioHangSerlvet
 */
@WebServlet("/GioHangSerlvet")
public class GioHangServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public GioHangServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		GioHangDAO ghDAO = new GioHangDAO();
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		ghDAO = (GioHangDAO)session.getAttribute("cart");
		request.setAttribute("cart", ghDAO);
		request.getRequestDispatcher("/giohangmonan.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String strAction = request.getParameter("action");
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		System.out.println(strAction);
		request.setCharacterEncoding("utf-8");
		if(strAction != null && !strAction.equals("")) {
			if(strAction.equals("Save")) {
				Save(request,response);
				request.getSession().setAttribute("DatBanSucess", 1);
			}if(strAction.equals("Delete")) {
				deleteCart(request, response);
			}if(strAction.equals("-")) {
				tru(request, response);
			}if(strAction.equals("+")) {
				cong(request,response);
			}
		}
	}
	private void cong(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
HttpSession session = request.getSession();
		
		java.lang.String strItemIndex = request.getParameter("itemIndex");
		System.out.println(strItemIndex);
		GioHangDAO cartBean = null;

		Object objCartBean = session.getAttribute("cart");
		if(objCartBean != null) {
			cartBean = (GioHangDAO) objCartBean;
		}
		else {
			cartBean = new GioHangDAO();
		}
			int soluong=cartBean.getCartItem(Integer.parseInt(strItemIndex)-1).getSoluong();
			cartBean.getCartItem(Integer.parseInt(strItemIndex)-1).setSoluong(soluong+1);
			cartBean.calculateOrderTotal();
		try {
			response.setContentType("text/html;charset=UTF-8");
			request.setCharacterEncoding("utf-8");
			response.sendRedirect(request.getContextPath()+"/GioHangSerlvet");
			return;
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	private void Save(HttpServletRequest request,HttpServletResponse response) throws IOException {
		HttpSession session = request.getSession();
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		PhieuDatBan phieuDatBan = (PhieuDatBan)session.getAttribute("phieuDat");
		TaiKhoan tk = (TaiKhoan) session.getAttribute("userLogin");
		GioHangDAO ghDAO = new GioHangDAO();
		ghDAO = (GioHangDAO)session.getAttribute("cart");
		MonAnDAO maDAO = new MonAnDAO();
		List<ChiTietDatMonAn> listCTDMA = new ArrayList<ChiTietDatMonAn>();
		HoaDon hd = new HoaDon();
		if(ghDAO==null) {
			phieuDatBan.setListChiTietDatMon(null);
			hd.setTongTien(0);
		}else {
			for(GioHang gh: ghDAO.getDsMonAn() ) {
				ChiTietDatMonAn ctdma = new ChiTietDatMonAn();
				ctdma.setMonAn(maDAO.getById(MonAn.class, gh.getMaMonAn()));
				ctdma.setSoLuong(gh.getSoluong());
				ctdma.setPhieuDatBan(phieuDatBan);
				listCTDMA.add(ctdma);
			}
			phieuDatBan.setListChiTietDatMon(listCTDMA);
			hd.setTongTien(ghDAO.getTongtien());
		}
		hd.setTrangThai("Chờ Xác Nhận");
		hd.setNgayLap(LocalDate.now());
		hd.setNguoiDung(tk.getNguoiDung());
		phieuDatBan.setHoaDon(hd);
	//	System.out.println(phieuDatBan);
		hd.setPhieuDatBan(phieuDatBan);
		PhieuDatBanDAO pdbDAO = new PhieuDatBanDAO();
		HoaDonDAO hdDAO = new HoaDonDAO();
		ChiTietHoaDonDAO cthdDAO = new ChiTietHoaDonDAO();
		pdbDAO.save(phieuDatBan);
		if(listCTDMA!=null) {
			for(ChiTietDatMonAn cthd : listCTDMA) {
				cthdDAO.save(cthd);
		}
	}
		session.removeAttribute("cart");
		session.removeAttribute("phieuDat");
		response.setContentType("text/htmlcharset=UTF-8");
		response.sendRedirect(request.getContextPath()+"/");	
		//doGet(request, response);
	}
	private void deleteCart(HttpServletRequest request,HttpServletResponse response) throws UnsupportedEncodingException {
		HttpSession session = request.getSession();
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		java.lang.String strItemIndex = request.getParameter("itemIndex");
		GioHangDAO cartBean = null;

		Object objCartBean = session.getAttribute("cart");
		if(objCartBean != null) {
			cartBean = (GioHangDAO) objCartBean;
		}
		else {
			cartBean = new GioHangDAO();
		}
		cartBean.deleteCartItem(strItemIndex);
		try {
			response.sendRedirect(request.getContextPath()+"/GioHangSerlvet");
			return;
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	private void tru(HttpServletRequest request,HttpServletResponse response) {
		HttpSession session = request.getSession();
		
		java.lang.String strItemIndex = request.getParameter("itemIndex");
		System.out.println(strItemIndex);
		GioHangDAO cartBean = null;

		Object objCartBean = session.getAttribute("cart");
		if(objCartBean != null) {
			cartBean = (GioHangDAO) objCartBean;
		}
		else {
			cartBean = new GioHangDAO();
		}
		if(cartBean.getCartItem(Integer.parseInt(strItemIndex)-1).getSoluong()==1) {
		cartBean.deleteCartItem(strItemIndex);
		cartBean.calculateOrderTotal();
		}else {
			int soluong=cartBean.getCartItem(Integer.parseInt(strItemIndex)-1).getSoluong();
			cartBean.getCartItem(Integer.parseInt(strItemIndex)-1).setSoluong(soluong-1);
			cartBean.calculateOrderTotal();
		}
		try {
			response.setContentType("text/html;charset=UTF-8");
			request.setCharacterEncoding("utf-8");
			response.sendRedirect(request.getContextPath()+"/GioHangSerlvet");
			return;
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	}
