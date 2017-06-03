package ajax.example;

import java.io.IOException;
import java.io.PrintWriter;

import org.json.JSONArray;
import org.json.JSONObject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class JsonServlet
 */
@WebServlet("/JsonServlet")
public class JsonServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JsonServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    /**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
    	response.setContentType("application/json");
		response.setHeader("Cache-Control", "nocache");
        response.setCharacterEncoding("utf-8");
        
        try {
        	
			JSONObject json = new JSONObject();
			// put some value pairs into the JSON object as into a Map.
			json.put("status", 200);
			json.put("msg", "Get data faild");

			// put a "map" 
			JSONObject map = new JSONObject();
			map.put("key1", "val1");
			map.put("key2", "val2");
			json.put("map", map);
			
			// put an "array"
			JSONArray arr = new JSONArray();
			arr.put(5);
			arr.put(3);
			arr.put(1);
			json.put("arr", arr);

			// finally output the json string		
			response.getWriter().write(json.toString());
			
		} catch (Exception e) {
			// TODO: handle exception
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
    @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
    	response.setContentType("application/json");
		response.setHeader("Cache-Control", "nocache");
        response.setCharacterEncoding("utf-8");
        
        String textsearch = request.getParameter("textsearch").trim();
	
        try {
			JSONObject json = new JSONObject();
			// put some value pairs into the JSON object as into a Map.
			json.put("status", "Get data success");
			json.put("msg", textsearch);

			// put a "map" 
			JSONObject map = new JSONObject();
			map.put("key1", "val1");
			map.put("key2", "val2");
			json.put("map", map);
			
			// put an "array"
			JSONArray arr = new JSONArray();
			arr.put(5);
			arr.put(3);
			arr.put(1);
			json.put("arr", arr);

			// finally output the json string		
			response.getWriter().write(json.toString());
			
		} catch (Exception e) {
			// TODO: handle exception
		}
	}

}
