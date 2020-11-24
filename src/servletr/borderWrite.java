package servletr;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.BoardDAO;
import DTO.BoardDTO;

@WebServlet("/borderWrite")
public class borderWrite extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public borderWrite() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("UTF-8");

		BoardDAO bDAO = new BoardDAO();
		BoardDTO bDTO = new BoardDTO();

		String writer = (String) request.getSession().getAttribute("nickname");

		bDTO.setTitle(request.getParameter("title"));
		bDTO.setComment(request.getParameter("comment"));
		bDTO.setWriter(writer);

		bDAO.write(bDTO);
		
		response.sendRedirect("./FreeBorderForm.jsp");
	}

}
