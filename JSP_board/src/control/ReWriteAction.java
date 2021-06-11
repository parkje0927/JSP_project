package control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.BoardBean;
import model.BoardDAO;

@WebServlet("/ReWriteAction")
public class ReWriteAction extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		reqPro(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		reqPro(request, response);
	}
	
	protected void reqPro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		int num = Integer.parseInt(request.getParameter("num"));
		BoardDAO bdao = BoardDAO.getInstance();
		BoardBean bean = bdao.getOneBoard(num);
		
		int ref = bean.getRef();
		int re_step = bean.getRe_step();
		int re_level = bean.getRe_level();
		
		System.out.println("Ref " + ref);
		
		request.setAttribute("ref",  ref);
		request.setAttribute("re_step",  re_step);
		request.setAttribute("re_level",  re_level);
		
		//답글이면 re_step, re_level에 +1 씩 해줘야 하는 거 아닌가..? => pro 확인해보기
		
		RequestDispatcher dis = request.getRequestDispatcher("04reWrite.jsp");
		dis.forward(request, response);
	}
}
