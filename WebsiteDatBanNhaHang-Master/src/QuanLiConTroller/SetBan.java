package QuanLiConTroller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.support.StaticApplicationContext;

import dao.BanDAO;
import dao.ChiTietDatBanDAO;
import dao.HoaDonDAO;
import dao.PhieuDatBanDAO;
import dao.ThoiGianDatBanDAO;
import entity.Ban;
import entity.ChiTietDatBan;
import entity.HoaDon;
import entity.PhieuDatBan;
import entity.ThoiGianDatBan;

/**
 * Servlet implementation class SetBan
 */
@WebServlet("/SetBan")
public class SetBan extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SetBan() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response){
		// TODO Auto-generated method stub
		
		
		try {
			response.setContentType("text/html;charset=UTF-8");
			request.setCharacterEncoding("utf-8");
			PhieuDatBanDAO pdbDAO = new PhieuDatBanDAO();
			PhieuDatBan phieuDatBan = new PhieuDatBan();
			//Thong tin phieu dat ban

			int maPhieuDat = Integer.parseInt(request.getParameter("idphieudat"));
			//Get danh sach ban
			List<Ban> dsBan = new ArrayList<Ban>();
			BanDAO banDAO = new BanDAO();
			dsBan = banDAO.getAll(Ban.class);

			phieuDatBan = pdbDAO.getById(PhieuDatBan.class, maPhieuDat);
			//		if(phieuDatBan.getListChiTietDatBan()!=null) {
			//		System.out.println(phieuDatBan.getListChiTietDatBan().get(0));
			//		}else {
			//			System.out.println("rong");
			//		}
			ThoiGianDatBanDAO tgDAO = new ThoiGianDatBanDAO();
			ThoiGianDatBan thoiGianDatBan =new ThoiGianDatBan();
			thoiGianDatBan =  tgDAO.getUserByThoiGian(phieuDatBan.getThoiGianDatBan());
			if(thoiGianDatBan.getDsPhieuDatBan()!=null) {
				for(int e = 0; e< thoiGianDatBan.getDsPhieuDatBan().size();e++) {
					//System.out.println(e);
					if(thoiGianDatBan.getDsPhieuDatBan().get(e).getListChiTietDatBan()!=null) {
						System.out.println(thoiGianDatBan.getDsPhieuDatBan().get(e).getListChiTietDatBan().size());
						
						boolean stus = thoiGianDatBan.getDsPhieuDatBan().get(e).getHoaDon().getTrangThai().equalsIgnoreCase("Đã Thanh Toán");
					//	System.out.println(stus);
						if(stus==false) {
						for(int i = 0;i<dsBan.size();i++) {
							for(int j =0;j<thoiGianDatBan.getDsPhieuDatBan().get(e).getListChiTietDatBan().size();j++) {
								System.out.println();
								//System.out.println(thoiGianDatBan.getPhieuDatBan().getListChiTietDatBan().size());
								if(dsBan.get(i).getMaBan()==thoiGianDatBan.getDsPhieuDatBan().get(e).getListChiTietDatBan().get(j).getBan().getMaBan()) {
									dsBan.remove(i);
								}
							}
						}
					}
					}
				}
			}
//			if(phieuDatBan.getListChiTietDatBan()!=null) {
//				for(int i = 0;i<dsBan.size();i++) {
//					for(int j =0;j<phieuDatBan.getListChiTietDatBan().size();j++) {
//						//System.out.println(thoiGianDatBan.getPhieuDatBan().getListChiTietDatBan().size());
//						if(dsBan.get(i).getMaBan()==phieuDatBan.getListChiTietDatBan().get(j).getBan().getMaBan()) {
//							dsBan.remove(i);
//						}
//					}
//				}
//			}
			request.setAttribute("dsBan", dsBan);
			request.setAttribute("phieudat", phieuDatBan);
			RequestDispatcher dispatcher= getServletContext().getRequestDispatcher("/nhanvien/pages/invoice/setban.jsp");
			dispatcher.forward(request, response);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String strAction = request.getParameter("action");
		//	System.out.println(strAction);
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		if(strAction != null && !strAction.equals("")) {
			if(strAction.equals("Add")) {
				addBan(request, response);
				return;
			}			
		}if(strAction.equals("Delete")) {
			//System.out.println("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");
			detele(request,response);
			return;
		}
	}
	private void detele(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		String maBan = request.getParameter("maBan");
		String maPhieu = request.getParameter("maphieu");
		BanDAO banDAO = new BanDAO();
		PhieuDatBanDAO pdbDAO = new PhieuDatBanDAO();
		ChiTietDatBanDAO ctdbDAO = new ChiTietDatBanDAO();
		PhieuDatBan phieuDatBan = pdbDAO.getById(PhieuDatBan.class, Integer.parseInt(maPhieu));
		Ban ban = banDAO.getById(Ban.class, Integer.parseInt(maBan));
		ChiTietDatBan ctdb = new ChiTietDatBan();
		ctdb.setBan(ban);
		ctdb.setPhieuDatBan(phieuDatBan);
		ctdbDAO.deleteCTDB(ctdb);
		response.setContentType("text/htmlcharset=UTF-8");
		response.sendRedirect(request.getContextPath()+"/SetBan?idphieudat="+maPhieu+"");
	}

	private void addBan(HttpServletRequest request,HttpServletResponse response) throws IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		String maBan = request.getParameter("maBan");
		String maPhieu = request.getParameter("maphieu");
		BanDAO banDAO = new BanDAO();
		PhieuDatBanDAO pdbDAO = new PhieuDatBanDAO();
		ChiTietDatBanDAO ctdbDAO = new ChiTietDatBanDAO();
		PhieuDatBan phieuDatBan = pdbDAO.getById(PhieuDatBan.class, Integer.parseInt(maPhieu));

		entity.HoaDon hd = new HoaDon();
		hd = phieuDatBan.getHoaDon();
		hd.setNgayLap(LocalDate.now());
		if(hd.getTrangThai().equals("Chờ Xác Nhận")) {
			hd.setTrangThai("Đã Xác Nhận");
		}
		Ban ban = banDAO.getById(Ban.class, Integer.parseInt(maBan));
		ChiTietDatBan ctdb = new ChiTietDatBan();
		ctdb.setBan(ban);
		ctdb.setPhieuDatBan(phieuDatBan);
		List<ChiTietDatBan> dsBan = new ArrayList<ChiTietDatBan>(); 
		if(phieuDatBan.getListChiTietDatBan()!=null) {
			dsBan =	phieuDatBan.getListChiTietDatBan();
		}
		dsBan.add(ctdb);
		phieuDatBan.setListChiTietDatBan(dsBan);
		hd.setPhieuDatBan(phieuDatBan);
		phieuDatBan.setHoaDon(hd);
		pdbDAO.update(phieuDatBan);
		//ctdbDAO.save(ctdb);
		response.setContentType("text/htmlcharset=UTF-8");
		response.sendRedirect(request.getContextPath()+"/SetBan?idphieudat="+maPhieu+"");

	}

}
