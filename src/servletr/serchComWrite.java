package servletr;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.SerchComDAO;
import DTO.SerchComDTO;

/**
 * Servlet implementation class serchComWrite
 */
@WebServlet("/serchComWrite")
public class serchComWrite extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public serchComWrite() {
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
		
		SerchComDAO serchComDAO = new SerchComDAO();
		SerchComDTO serchComDTO = new SerchComDTO();
		
		String username = request.getParameter("username");
		System.out.println(username);
		String SerchComment = request.getParameter("SerchComment");
		System.out.println(SerchComment);
		
		serchComDTO.setUser(username);
		serchComDTO.setComment(SerchComment);
		
		serchComDAO.insertserchcom(serchComDTO);
		
		response.sendRedirect("./serchForm.jsp");
	}

}
