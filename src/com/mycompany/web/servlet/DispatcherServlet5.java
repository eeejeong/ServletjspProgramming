package com.mycompany.web.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DispatcherServlet5 extends HttpServlet {	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Client가 새로운 페이지를 요청하면서 Server에게 넘기는 모든 Parameter 값
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		int intAge = Integer.parseInt(age);

		request.setAttribute("name", name);
		request.setAttribute("age", intAge);
		
				
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/view/dispatcher5.jsp");
		rd.forward(request, response);
	}
}
