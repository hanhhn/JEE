package com.jee.exercise;

import java.io.IOException;
import java.util.ResourceBundle;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class productservlet
 */
public class productservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public productservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String  currentLang = "";
		String cookieLang = "lang";
		Cookie[] cookies = request.getCookies();
		
		for(int i = 0; i < cookies.length; i++) 
	    {
	        Cookie cookie = cookies[i];
	        if (cookieLang.equals(cookie.getName())) 
	        {
	        	currentLang = cookie.getValue();
	        	if(currentLang != null) {
	        		break;
	        	}
	        }
	    }
		
		if(currentLang == "") {
			currentLang = "en";
			Cookie ck = new Cookie("lang", currentLang);
			response.addCookie(ck);
		}
		
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		ResourceBundle resourceBundle = Utility.getResourceBundle(currentLang);
		request.setAttribute("message", resourceBundle.getString("intropage"));
		request.getRequestDispatcher("/about.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
