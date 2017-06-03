	package com.ajax.bigexample;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet(description = "Demo Action", urlPatterns = { "/Demo" })
public class DemoAction extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("===========Inside Demo Action================");

		String destination = "/WEB-INF/views/datatable-demo.jsp";
		System.out.println("== destination : " + destination);
		RequestDispatcher rd = request.getRequestDispatcher(destination);
		rd.forward(request, response);
	}

}
