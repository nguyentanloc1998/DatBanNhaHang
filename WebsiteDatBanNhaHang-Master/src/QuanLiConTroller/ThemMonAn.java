package QuanLiConTroller;

import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.List;

import javax.imageio.ImageIO;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import dao.LoaiMonAnDAO;
import dao.MonAnDAO;
import entity.LoaiMonAn;
import entity.MonAn;
import javassist.bytecode.ByteArray;


/**
 * Servlet implementation class ThemMonAn
 */
@WebServlet("/ThemMonAn")
@MultipartConfig
public class ThemMonAn extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ThemMonAn() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		LoaiMonAnDAO lmaDAO = new LoaiMonAnDAO();
		List<LoaiMonAn> dsLoaiMonAn = new ArrayList<LoaiMonAn>();
		dsLoaiMonAn = 	lmaDAO.getAll(LoaiMonAn.class);
		request.setCharacterEncoding("UTF-8");
		request.setAttribute("dsLoaiMonAn", dsLoaiMonAn);
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		request.getRequestDispatcher("/nhanvien/pages/product/addproduct.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		String tenMonAn = (String) request.getParameter("tenmonan");
		String maLoaiMon = (String) request.getParameter("loaiMon");
		String donViTinh = (String) request.getParameter("donvitinh");
		String trangThai = (String) request.getParameter("trangthai");
		Long gia = Long.valueOf(request.getParameter("gia"));
		String strpath= (String) request.getParameter("hinhanhmonan");
		Part part = request.getPart("hinhanhmonan");
		if(upload(part, request, response).equals("")) {
			//k them duoc hinh anh
		}else
		{
		
		MonAn monan = new MonAn();
		monan.setTenMonAn(tenMonAn);
		monan.setLoaiMonAn(new LoaiMonAnDAO().getById(LoaiMonAn.class, Integer.parseInt(maLoaiMon)));
		monan.setDonGia(gia);
		monan.setDonViTinh(donViTinh);
		monan.setTrangThai("??ang B??n");
		monan.setUrlHinhAnh("/images/"+Path.of(part.getSubmittedFileName()).getFileName().toString());
		MonAnDAO maDAO = new MonAnDAO();
		maDAO.save(monan);
		response.sendRedirect(request.getContextPath()+"/XemDsMonAn");
		}
	}
private String upload(Part filePart,HttpServletRequest request, HttpServletResponse response) {
	
	
	
	    try {
			final PrintWriter writer = response.getWriter();
		    
		    String path = getServletContext().getRealPath("/images");
		    String fileName = Path.of(filePart.getSubmittedFileName()).getFileName().toString();
		  
		    if(!Files.exists(Path.of(path))) {
		    	Files.createDirectories(Path.of(path));
		    	
		    }
		    filePart.write(path+"/"+fileName);
		    return fileName;
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
	  
	// TODO Auto-generated method stub
return "";
}

}
