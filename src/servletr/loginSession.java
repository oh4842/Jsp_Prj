package servletr;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DTO.Member;
import user.DBUtill;

/**
 * Servlet implementation class loginSession
 */
@WebServlet("/loginSession")
public class loginSession extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public loginSession() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("UTF-8");

		DBUtill dbUtill = new DBUtill();

		String id = request.getParameter("loginid");
		String pw = request.getParameter("loginpassword");

		// ³ªÁß¿¡---------------------------------------------------------
		Member memberuse = dbUtill.userdata(id);

		if (dbUtill.login(id, pw)) {
			request.getSession().setAttribute("id", memberuse.getId());
			request.getSession().setAttribute("nickname", memberuse.getNickname());
		}
		response.sendRedirect("index.jsp");
	}
}
