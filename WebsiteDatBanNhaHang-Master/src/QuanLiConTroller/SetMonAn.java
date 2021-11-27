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

import dao.BanDAO;
import dao.MonAnDAO;
import dao.PhieuDatBanDAO;
import entity.Ban;
import entity.ChiTietDatMonAn;
import entity.MonAn;
import entity.PhieuDatBan;

/**
 * Servlet implementation class SetMonAn
 */
@WebServlet("/SetMonAn")
public class SetMonAn extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SetMonAn() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		PhieuDatBanDAO pdbDAO = new PhieuDatBanDAO();
		PhieuDatBan phieuDatBan = new PhieuDatBan();
	//Thong tin phieu dat ban
		int maPhieuDat = Integer.parseInt(request.getParameter("idphieudat"));
		MonAnDAO maDAO = new MonAnDAO();
		List<MonAn> dsMonAn = new ArrayList<MonAn>();
		dsMonAn = maDAO.getAll(MonAn.class);
		phieuDatBan = pdbDAO.getById(PhieuDatBan.class, maPhieuDat);
		request.setAttribute("phieudat", phieuDatBan);
		request.setAttribute("dsMonAn", dsMonAn);
		RequestDispatcher dispatcher= getServletContext().getRequestDispatcher("/nhanvien/pages/invoice/setmonan.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		String maMonAn = request.getParameter("mamonan");
		String maPhieuDat = request.getParameter("maphieudat");
		MonAnDAO maDAO = new MonAnDAO();
		PhieuDatBanDAO pdbDAO = new PhieuDatBanDAO();
		PhieuDatBan pdb = new PhieuDatBan();
		pdb = pdbDAO.getById(PhieuDatBan.class, Integer.parseInt(maPhieuDat));
		
		List<ChiTietDatMonAn> dsCtdm = new ArrayList<ChiTietDatMonAn>();
		dsCtdm = pdb.getListChiTietDatMon();
		System.out.println(dsCtdm.size());
		if(dsCtdm.size()==0) {
			MonAn monan = new MonAn();
			monan = maDAO.getById(MonAn.class, Integer.parseInt(maMonAn));
			ChiTietDatMonAn chiTietDatMonAn = new ChiTietDatMonAn();
			chiTietDatMonAn.setPhieuDatBan(pdb);
			chiTietDatMonAn.setSoLuong(1);
			chiTietDatMonAn.setMonAn(monan);
			chiTietDatMonAn.setThanhtien(1*monan.getDonGia());
			dsCtdm.add(chiTietDatMonAn);
			System.out.println(dsCtdm.size());
			pdb.setListChiTietDatMon(dsCtdm);
			System.out.println(pdbDAO.update(pdb));
			response.sendRedirect(request.getContextPath()+"/SetMonAn?idphieudat="+maPhieuDat+"");
			return;
		}else {
			MonAn monan = new MonAn();
			monan = maDAO.getById(MonAn.class, Integer.parseInt(maMonAn));
			for(int i =0 ; i<dsCtdm.size();i++) {
				if(dsCtdm.get(i).getMonAn().getMaMonAn()==monan.getMaMonAn()) {
					dsCtdm.get(i).setSoLuong(dsCtdm.get(i).getSoLuong()+1);
					pdb.setListChiTietDatMon(dsCtdm);
					pdbDAO.update(pdb);
					response.sendRedirect(request.getContextPath()+"/SetMonAn?idphieudat="+maPhieuDat+"");
					return;
				}
			}
			ChiTietDatMonAn chiTietDatMonAn = new ChiTietDatMonAn();
			chiTietDatMonAn.setPhieuDatBan(pdb);
			chiTietDatMonAn.setSoLuong(1);
			chiTietDatMonAn.setMonAn(monan);
			chiTietDatMonAn.setThanhtien(1*monan.getDonGia());
			dsCtdm.add(chiTietDatMonAn);
			pdb.setListChiTietDatMon(dsCtdm);
			pdbDAO.update(pdb);
			response.sendRedirect(request.getContextPath()+"/SetMonAn?idphieudat="+maPhieuDat+"");
			return;
		}
		
	}

}
