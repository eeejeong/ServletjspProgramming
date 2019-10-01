package com.mycompany.web.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DispatcherServlet4 extends HttpServlet {	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 응답 내용 만들기
		// 방법1: 서블릿에서 직접 만들기
		/* 
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE html>");
		out.println("<html>");
		out.println("	<head>");
		out.println("	</head>");
		out.println("	<body>");
		out.println("		<h4>DispatcherServlet4</h4>");
		out.println("		응답 내용");
		out.println("	</body>");
		out.println("</html>");
		*/
		
		// 방법2: jps에서 만들어서 forward하기
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/view/dispatcher4.jsp");
		rd.forward(request, response);
	}
}
