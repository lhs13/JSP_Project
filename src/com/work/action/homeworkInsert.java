package com.work.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.work.model.HomeWorkDTO;
import com.work.model.WorkDAO;
import com.work.model.WorkDTO;

/**
 * Servlet implementation class homeworkInsert
 */
@WebServlet("/work/homeworkInsert.wo")
public class homeworkInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public homeworkInsert() {
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		request.setCharacterEncoding("utf-8");
		HomeWorkDTO hdto = new HomeWorkDTO();
		hdto.setContent(request.getParameter("content"));
		hdto.setHomework(request.getParameter("homework"));
		hdto.setId(request.getParameter("id"));
		hdto.setTitle(request.getParameter("title"));
		WorkDAO dao = WorkDAO.getInstance();
		dao.homeworkInsert(hdto);
		
		/*HttpSession session = request.getSession();
		WorkDTO swdto = (WorkDTO)session.getAttribute("sessDto");
		
		swdto.getPwd();
		request.getParameter("udpwd");
		
		if(swdto.getPwd().equals(request.getParameter("udpwd"))) {
			
		}else {
			
		}*/
	}

}
