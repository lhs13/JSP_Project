package com.work.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.work.model.HomeWorkDTO;
import com.work.model.PageUtil;
import com.work.model.WorkDAO;
import com.work.model.WorkDTO;

/**
 * Servlet implementation class homeworkView
 */
@WebServlet("/work/homeworkView.wo")
public class homeworkView extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public homeworkView() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		//페이지네이션
		String page = request.getParameter("pageNum")==null?"1":request.getParameter("pageNum");
		int currentPage = Integer.parseInt(page);
		String word = request.getParameter("word")==null?"":request.getParameter("word");
		//word값이 null이면 ""(공백)을 주고 아니면 받아온 word값을 준다
		String field = request.getParameter("field")==null?"":request.getParameter("field");
		
		int pageSize = 5; //한 화면에 보여지는 수
		int startRow = (currentPage-1)*pageSize+1;
		int endRow = currentPage*pageSize;
		
		WorkDAO dao = WorkDAO.getInstance();
		ArrayList<HomeWorkDTO> arr = dao.workList(field,word,startRow,endRow);
		int count = dao.workCount(field,word);
		//총페이지수
		int totpage = (count/pageSize)+(count%pageSize==0?0:1);
		//+(count%pageSize==0?0:1):count%pageSize가 0이면 +0 아니면 +1
		int pageblock = 3;
		int startpage = ((currentPage-1)/pageblock)*pageblock+1;
		
		int endpage = startpage+pageblock-1;
		
		if(endpage>totpage) {
			endpage=totpage;
		}
		
		PageUtil pu = new PageUtil();
		pu.setStartpage(startpage);
		pu.setCurrentPage(currentPage);
		pu.setEndpage(endpage);
		pu.setPageblock(pageblock);
		pu.setTotpage(totpage);
		pu.setField(field);
		pu.setWord(word);
		
		
		
		request.setAttribute("pu", pu);
		
		int rowNo = count-((currentPage-1)*pageSize);
		request.setAttribute("rowNo", rowNo);
		
		request.setAttribute("count", count);
		request.setAttribute("lists", arr);
		RequestDispatcher rd = request.getRequestDispatcher("pagingResult.jsp");
	//	RequestDispatcher rd = request.getRequestDispatcher("homework.jsp");
		rd.forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
