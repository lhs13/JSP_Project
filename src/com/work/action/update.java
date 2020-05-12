package com.work.action;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.work.model.HomeWorkDTO;
import com.work.model.WorkDAO;

/**
 * Servlet implementation class update
 */
@WebServlet("/work/update.wo")
public class update extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public update() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String title = request.getParameter("title");
		int num = Integer.parseInt(request.getParameter("num"));
		String content = request.getParameter("content");
		String homework = request.getParameter("homework");
		
		HomeWorkDTO hdto = new HomeWorkDTO();
		
		hdto.setContent(content);
		hdto.setTitle(title);
		hdto.setHomework(homework);
		hdto.setNum(num);
		
		WorkDAO dao = WorkDAO.getInstance();
		dao.homeworkUpdate(hdto);
		response.sendRedirect("homework.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
