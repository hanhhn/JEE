package com.jee.exercise;

import java.util.Locale;
import java.util.ResourceBundle;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

/**
 * Servlet implementation class i18nservlet
 */
public class i18nservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private ResourceBundle resourceBundle;
	private String currentLang;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public i18nservlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		
		try {
			currentLang = request.getParameter("lang");
			
			if(currentLang != null) {
				Cookie ck = new Cookie("lang", currentLang);
				response.addCookie(ck);
				
			}
			else {
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
				
				if(currentLang == null) {
					currentLang = "en";
					Cookie ck = new Cookie("lang", currentLang);
					response.addCookie(ck);
				}
			}
			
			JSONObject objects = new JSONObject();
			resourceBundle = Utility.getResourceBundle(currentLang);
			
			objects.put("lang", currentLang);
			objects.put("banner", resourceBundle.getString("banner"));
			objects.put("title", resourceBundle.getString("title"));
			objects.put("home", resourceBundle.getString("home"));
			objects.put("introduction", resourceBundle.getString("introduction"));
			objects.put("product", resourceBundle.getString("product"));
			objects.put("search", resourceBundle.getString("search"));
			objects.put("hello", resourceBundle.getString("hello"));
			objects.put("content", resourceBundle.getString("content"));
			objects.put("learnmore", resourceBundle.getString("learnmore"));
			objects.put("about", resourceBundle.getString("about"));
			objects.put("intro", resourceBundle.getString("intro"));
			objects.put("message", resourceBundle.getString("intropage"));
			
			
			
			response.getWriter().write(objects.toString());
			
		} catch (Exception e) {
			// TODO: handle exception
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
