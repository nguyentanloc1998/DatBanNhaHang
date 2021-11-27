package CustomerController;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.AccoutDAO;
import entity.TaiKhoan;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
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
		request.getRequestDispatcher("/dangnhap.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) {
		
			try {
				HttpSession session = request.getSession();
				response.setContentType("text/html;charset=UTF-8");
				request.setCharacterEncoding("utf-8");
				PrintWriter out = response.getWriter();
				AccoutDAO acDAO = new AccoutDAO();
				String username = (String) request.getParameter("username");
				String password = (String) request.getParameter("password");
				TaiKhoan tk = new TaiKhoan();
				tk.setMatKhau(password);
				tk.setTenDangNhap(username);
				if(acDAO.LoginAccount(tk)==true) {
					tk = acDAO.getUserByUsername(username);
					if(tk.getLoaiTaiKhoan().equals("Khách Hàng")) {	
						request.getSession().setAttribute("userLogin", tk);
						request.getSession().setAttribute("loginSucess",1);
						response.sendRedirect(request.getContextPath()+"/DatBanServlet");
						return;
						
					}
					else if(tk.getLoaiTaiKhoan().equals("Nhân Viên")) {
						request.getSession().setAttribute("userLogin", tk);
						response.sendRedirect(request.getContextPath()+"/Dashboar");
						return;
					}
				}else {
				request.getRequestDispatcher("/dangnhap.jsp").forward(request, response);
				}
			} catch (ServletException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	

}
	}
