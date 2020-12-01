package servletr;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.BoardDAO;
import DTO.BoardDTO;

/**
 * Servlet implementation class deleteMyWrite
 */
@WebServlet("/deleteMyWrite")
public class deleteMyWrite extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public deleteMyWrite() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("UTF-8");
		
		String idx = request.getParameter("idx");
		String writer = request.getParameter("writer");
		System.out.println(idx);
		
		BoardDTO bDTO = new BoardDTO();
		bDTO.setIdx(idx);
		bDTO.setWriter(writer);
		
		BoardDAO bDAO = new BoardDAO();
		
		if(request.getSession().getAttribute("nickname").toString().equals(bDTO.getWriter())) {
			bDAO.deleteMyWrite(bDTO);
			response.sendRedirect("./FreeBorderForm.jsp");
		}else {
			response.sendRedirect("./index.jsp");
		}
	}

}
