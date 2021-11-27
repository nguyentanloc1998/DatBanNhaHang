package CustomerController;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.GioHangDAO;
import dao.MonAnDAO;

import entity.GioHang;
import entity.MonAn;

/**
 * Servlet implementation class ChonMonAnServlet
 */
@WebServlet("/ChonMonAnServlet")
public class ChonMonAnServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ChonMonAnServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=UTF-8");
		List<MonAn> dsMonAn = new ArrayList<MonAn>();
		
		MonAnDAO monanDAO = new MonAnDAO();
		dsMonAn =  monanDAO.getAll(MonAn.class);
		MonAn a = new MonAn();
		//	System.out.println(a.getMaMonAn().toString());
		request.setAttribute("dsMonAn", dsMonAn);
	//	System.out.println(dsMonAn.get(1).getTenMonAn()+" do get");
		
		// https://daynhauhoc.com/t/hoi-ve-cach-fix-loi-font-tieng-viet-trong-jsp/75768/4
		request.getRequestDispatcher("/chonmonan.jsp").forward(request, response);
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
			if(strAction.equals("Add")) {
				addToCart(request,response);
			}
			else if(strAction.equals("Delete")) {
				System.out.println("abc");
				deleteCart(request,response);
			}
			else if(strAction.equals("Save")) {
				//saveCart(request, response);
			}
		}

	}

	private void deleteCart(HttpServletRequest request,HttpServletResponse response) throws UnsupportedEncodingException {
		HttpSession session = request.getSession();
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
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
			response.sendRedirect(request.getContextPath()+"/GioHangServlet");
			return;
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	private void addToCart(HttpServletRequest request,HttpServletResponse response) throws IOException {
		HttpSession session = request.getSession();
		request.setCharacterEncoding("utf-8");
		int maMonAn = (Integer.parseInt(request.getParameter("maMonAn")));
		MonAnDAO maDAO = new MonAnDAO();
		MonAn monAn = new MonAn();
		monAn = maDAO.getById(MonAn.class, maMonAn);
		GioHangDAO cartBean = null;
		Object objCartBean = session.getAttribute("cart");
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");

		if(objCartBean != null) {
			cartBean = (GioHangDAO) objCartBean;
		}
		else {
			response.setContentType("text/html; charset=UTF-8");
			request.setCharacterEncoding("UTF-8");
			cartBean = new GioHangDAO();
			session.setAttribute("cart", cartBean);
		}
		GioHang cartItem = new GioHang(maMonAn,monAn.getTenMonAn(), 1,monAn.getDonGia(), monAn.getUrlHinhAnh());
		//System.out.println(cartItem.getTenMonAn());
		if(cartBean.getDsMonAn().size() == 0) {	
			cartBean.addCartItem(maMonAn,monAn.getTenMonAn(), 1,monAn.getDonGia(), monAn.getUrlHinhAnh());
		}else {
			for(GioHang c : cartBean.getDsMonAn()) {
				if(c.getMaMonAn()==(cartItem.getMaMonAn())) {
					c.setSoluong(c.getSoluong()+1);
					cartBean.calculateOrderTotal();
					try {
						response.sendRedirect(request.getContextPath()+"/ChonMonAnServlet");
					} catch (IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					return;
				}
			}
		//	response.setContentType("text/html; charset=UTF-8");
//			request.setCharacterEncoding("UTF-8");
			cartBean.addCartItem(maMonAn,monAn.getTenMonAn(), 1,monAn.getDonGia(), monAn.getUrlHinhAnh());
		}
		try {
		//	System.out.println(cartBean.getDsMonAn().get(0).getTenMonAn());
			response.sendRedirect(request.getContextPath()+"/ChonMonAnServlet");
			return;
		} catch (IOException e) {
			// TODO Auto-generated catch block de t rs may cai
			e.printStackTrace();
		}
	}
}		

