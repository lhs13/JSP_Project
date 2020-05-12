package com.work.action;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.work.model.WorkDAO;
import com.work.model.WorkDTO;

/**
 * Servlet implementation class Join
 */
@WebServlet("/work/workInsert.wo")
public class Join extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Join() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		WorkDTO dto = new WorkDTO();
		dto.setBirth(request.getParameter("birth"));
		dto.setCode(request.getParameter("code"));
		dto.setGender(request.getParameter("gender"));
		dto.setId(request.getParameter("uid"));
		dto.setName(request.getParameter("name"));
		dto.setPwd(request.getParameter("pwd"));
		dto.setSubject(request.getParameterValues("subject"));
		WorkDAO dao = WorkDAO.getInstance();
		dao.Join(dto);
		
	}

}
