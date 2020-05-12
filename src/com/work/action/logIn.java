package com.work.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.work.model.WorkDAO;
import com.work.model.WorkDTO;

/**
 * Servlet implementation class logIn
 */
@WebServlet("/work/logIn.wo")
public class logIn extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public logIn() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("main.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		WorkDAO dao = WorkDAO.getInstance();
		WorkDTO dto = dao.login(id,pwd);
		String flag = "ȸ���ƴ�"; //ȸ�� �ƴ�
		//if(dto!=null) { //ȸ���϶� // �ּ�Ǯ�� �������� �ȳ��ϼ��� �ȵ�!! Ǯ������!!!!!!!!!!!
			flag = dto.getCode(); //�л�, ������
			//if(flag=="�л�" || flag=="������") {
				HttpSession session = request.getSession();
				session.setAttribute("sessDTO", dto);
				session.setAttribute("userid", dto.getId());
				session.setAttribute("pwd", dto.getPwd());
				session.setAttribute("code", dto.getCode());
			//}
		//}
		
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println(flag);
	}

}
