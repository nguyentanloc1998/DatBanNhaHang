package QuanLiConTroller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.time.LocalDate;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.BanDAO;
import dao.ChiTietDatBanDAO;
import dao.ChiTietHoaDonDAO;
import dao.HoaDonDAO;
import dao.KhuVucDAO;
import dao.MonAnDAO;
import dao.PhieuDatBanDAO;
import entity.Ban;
import entity.ChiTietDatMonAn;
import entity.HoaDon;
import entity.KhuVuc;
import entity.MonAn;
import entity.PhieuDatBan;
import entity.ThoiGianDatBan;

/**
 * Servlet implementation class XemDsPhieuDatBan
 */
@WebServlet("/XemDsPhieuDatBan")
public class XemDsPhieuDatBan extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public XemDsPhieuDatBan() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @throws IOException 
	 * @throws ServletException 
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			request.setCharacterEncoding("utf-8");
			response.setContentType("text/html;charset=UTF-8");
			List<PhieuDatBan> dsPhieuDatBan = new ArrayList<PhieuDatBan>();
			List<KhuVuc> dsKhuVuc = new ArrayList<KhuVuc>();
			KhuVucDAO kvDAO = new KhuVucDAO();
			HoaDonDAO hoaDonDAO = new HoaDonDAO();
			PhieuDatBanDAO pdbDAO = new PhieuDatBanDAO();
			dsKhuVuc = kvDAO.getAll(KhuVuc.class);
			dsPhieuDatBan = pdbDAO.getAll(PhieuDatBan.class);
			request.setAttribute("dsPhieuDatBan", dsPhieuDatBan);
			request.setAttribute("dsKhuVuc", dsKhuVuc);
			RequestDispatcher dispatcher= getServletContext().getRequestDispatcher("/nhanvien/pages/orders.jsp");
			dispatcher.forward(request, response);	
		} catch (UnsupportedEncodingException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=UTF-8");
		String strAction = request.getParameter("action");
		if(strAction != null && !strAction.equals("")) {
			
			}if(strAction.equals("Delete")) {
				DeletePhieuDat(request,response);
			}if(strAction.equals("Add")) {
				taophieudatban(request,response);
			}if(strAction.equals("deletemonan")) {
				DeleteMonAn(request,response);
			}if(strAction.equals("UpdatePD"));
				UpdateStatusPD(request,response);
		
	}

	private void UpdateStatusPD(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String maphieu = request.getParameter("idphieudat");
		PhieuDatBanDAO pdbDAO = new PhieuDatBanDAO();
		HoaDonDAO hdDAO = new HoaDonDAO();
		BanDAO bdao = new BanDAO();
		PhieuDatBan phieuDatBan = new PhieuDatBan();
	   phieuDatBan = pdbDAO.getById(PhieuDatBan.class, Integer.parseInt(maphieu));
		if(phieuDatBan.getListChiTietDatBan()!=null) {
			for(int i = 0;i<phieuDatBan.getListChiTietDatBan().size();i++) {
				entity.Ban ban = new Ban();
				ban=phieuDatBan.getListChiTietDatBan().get(i).getBan();
				ban.setTrangThai("Đang Ăn");
				bdao.update(ban);
				phieuDatBan.getListChiTietDatBan().get(i).getBan().setTrangThai("Đang Ăn");
			}
		}
		HoaDon hd = new HoaDon();
		hd=phieuDatBan.getHoaDon();
		hd.setTrangThai("Đang Ăn");
		phieuDatBan.setHoaDon(hd);
		hd.setPhieuDatBan(phieuDatBan);
		hdDAO.update(hd);
		  response.setContentType("text/htmlcharset=UTF-8");
	 		try {
				response.sendRedirect(request.getContextPath()+"/XemDsPhieuDatBan");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	 		return;
	}

	private void DeleteMonAn(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		List<ChiTietDatMonAn> dsDatMon = new ArrayList<ChiTietDatMonAn>();
		PhieuDatBan phieuDatBan = new PhieuDatBan();
		ChiTietHoaDonDAO ctdmDAO = new ChiTietHoaDonDAO();
		MonAnDAO maDAO = new MonAnDAO();
		phieuDatBan = new PhieuDatBanDAO().getById(PhieuDatBan.class,Integer.parseInt(request.getParameter("idpdb")));
		dsDatMon = phieuDatBan.getListChiTietDatMon();
		 String[] listidMA  = request.getParameterValues("checked");
		 List<String> list = Arrays.asList(listidMA);
	//	 System.out.println(list);
         for(String e: list){
        	 System.out.println(e);
        	 ChiTietDatMonAn ctdm = new ChiTietDatMonAn();
        	 MonAn monAn = new MonAn();
        	 monAn = maDAO.getById(MonAn.class, Integer.parseInt(e));
        	 ctdm.setPhieuDatBan(phieuDatBan);
        	 ctdm.setMonAn(monAn);
        	ctdmDAO.deleteCTDM(ctdm);
         }
//         phieuDatBan.setListChiTietDatMon(dsDatMon);
//         PhieuDatBanDAO phieuDatBanDAO = new PhieuDatBanDAO();
       //  phieuDatBanDAO.update(phieuDatBan);
         response.setContentType("text/htmlcharset=UTF-8");
 		response.sendRedirect(request.getContextPath()+"/XemDsPhieuDatBan");
 		return;
	}

	private void taophieudatban(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		String hoten = request.getParameter("hoten");
		String sdt = request.getParameter("sdt");
		String songuoi = request.getParameter("songuoi");
		String ghichu = request.getParameter("ghichu");
		
		PhieuDatBanDAO pdbDAO = new PhieuDatBanDAO();
		PhieuDatBan pdb = new PhieuDatBan();
		ThoiGianDatBan thoiGianDatBan = new ThoiGianDatBan();
		thoiGianDatBan.setNgayDat(LocalDate.now());
		thoiGianDatBan.setGioDat(LocalTime.now().format(DateTimeFormatter.ofPattern("HH:mm")).toString());
		//pdb.setHoTen(hoten);
		pdb.setLoaiTiec("");
	//	pdb.setSoDT(sdt);
		pdb.setSoNguoi(Integer.parseInt(songuoi));
		pdb.setGhiChu(ghichu);
		pdb.setThoiGianDatBan(thoiGianDatBan);
		pdb.setLoaiTiec("Khác");
		HoaDon hd= new HoaDon();
		hd.setTrangThai("Da Xac Nhan");
		hd.setPhieuDatBan(pdb);
		pdb.setHoaDon(hd);
		HoaDonDAO hdDAO = new HoaDonDAO();
		hdDAO.save(hd);
		response.setContentType("text/htmlcharset=UTF-8");
		response.sendRedirect(request.getContextPath()+"/XemDsPhieuDatBan");
		return;
		
	}

	private void DeletePhieuDat(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		// TODO Auto-generated method stub
		String maPhieuDat = request.getParameter("idphieudat");
		PhieuDatBanDAO pdbDAO = new PhieuDatBanDAO();
		PhieuDatBan phieuDatBan = new PhieuDatBan();
		phieuDatBan = pdbDAO.getById(PhieuDatBan.class, Integer.parseInt(maPhieuDat));
		HoaDon hd = phieuDatBan.getHoaDon();
		if(hd.getTrangThai().equals("Da Thanh Toan")) {
			response.setContentType("text/htmlcharset=UTF-8");
			response.sendRedirect(request.getContextPath()+"/XemDsPhieuDatBan");
			return;
		}
		hd.setTrangThai("Đã Hủy");
		hd.setPhieuDatBan(phieuDatBan);
		HoaDonDAO hdDAO = new HoaDonDAO();
		hdDAO.update(hd);
		response.setContentType("text/htmlcharset=UTF-8");
		response.sendRedirect(request.getContextPath()+"/XemDsPhieuDatBan");
		return;
	}

}
