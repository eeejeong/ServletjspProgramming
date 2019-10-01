package com.mycompany.web.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DispatcherServlet6 extends HttpServlet {	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("DispatcherServlet6 doGet 실행");
		
		// Client가 새로운 페이지를 요청하면서 Server에게 넘기는 모든 Parameter 값
		String title = request.getParameter("title");
		String content = request.getParameter("content");

		// jsp에서 이 데이터를 쓰기 위해서 Attribute에 전달
		request.setAttribute("title", title);
		request.setAttribute("content", content);
		
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/view/dispatcher6.jsp");
		rd.forward(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("DispatcherServlet6 doPost 실행");
		
		// Client가 새로운 페이지를 요청하면서 Server에게 넘기는 모든 Parameter 값
		String title = request.getParameter("title");
		String content = request.getParameter("content");

		// jsp에서 이 데이터를 쓰기 위해서 Attribute에 전달
		request.setAttribute("title", title);
		request.setAttribute("content", content);
		
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/view/dispatcher6.jsp");
		rd.forward(request, response);
	}
}
