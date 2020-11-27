package servletr;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import user.crawling;

@WebServlet("/crwal")
public class crawl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public crawl() {
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
		
		String url, tierrank, points, wins, losses, winratio, name, ranking, profileIcon;
		url = request.getParameter("serch");
		
		url = crawling.Url(url);
		
		tierrank = crawling.TierRank(url);
		request.setAttribute("tierrank", tierrank);
		
		points = crawling.LeaguePoints(url);
		request.setAttribute("points", points);
		
		wins = crawling.Wins(url);
		request.setAttribute("wins", wins);
		
		losses = crawling.Losses(url);
		request.setAttribute("losses", losses);
		
		winratio = crawling.Winratio(url);
		request.setAttribute("winratio", winratio);
		
		name = crawling.Name(url);
		request.setAttribute("name", name);
		
		ranking = crawling.Ranking(url);
		request.setAttribute("ranking", ranking);
		
		profileIcon = crawling.ProfileIcon(url);
		request.setAttribute("profileIcon", profileIcon);
		
		ServletContext context =getServletContext();
        RequestDispatcher dispatcher = context.getRequestDispatcher("/serchForm.jsp"); //넘길 페이지 주소
        dispatcher.forward(request, response);   
	}
}
