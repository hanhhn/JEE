package com.ajax.bigexample;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ajax.json.JSONArray;
import com.ajax.json.JSONObject;

@SuppressWarnings("serial")
@WebServlet(description = "Datatab leDemo", urlPatterns = { "/DatatableDemo" })
public class DatatableDemoAction extends HttpServlet {

	private String SEARCH_TERM;

	private String COL_NAME;

	private String DIR;

	private int START;

	private int AMOUNT;
	
	private String connectionString = "jdbc:postgresql://localhost:5432/BigExample";
	private String username = "postgres";
	private String password = "admin";


	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String[] cols = { "id", "firstName", "lastName", "gender", "address",
				"grade" };

		JSONObject result = new JSONObject();
		int amount = 10;
		int start = 0;
		int col = 0;
		String dir = "asc";
		String sStart = request.getParameter("iDisplayStart");
		String sAmount = request.getParameter("iDisplayLength");
		String sCol = request.getParameter("iSortCol_0");
		String sdir = request.getParameter("sSortDir_0");

		if (sStart != null) {
			start = Integer.parseInt(sStart);
			if (start < 0) {
				start = 0;
			}
		}
		if (sAmount != null) {
			amount = Integer.parseInt(sAmount);
			if (amount < 10 || amount > 100) {
				amount = 10;
			}
		}
		if (sCol != null) {
			col = Integer.parseInt(sCol);
			if (col < 0 || col > 5)
				col = 0;
		}
		if (sdir != null) {
			if (!sdir.equals("asc"))
				dir = "desc";
		}

		String colName = cols[col];
		int total = -1;
		try {
			total = getTotalRecordCount();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}

		AMOUNT = amount;
		SEARCH_TERM = request.getParameter("sSearch");
		COL_NAME = colName;
		DIR = dir;
		START = start;

		try {
			result = getStudentData(total, request);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		response.setContentType("application/json");
		response.setHeader("Cache-Control", "no-store");
		PrintWriter out = response.getWriter();

		out.print(result);

	}

	public JSONObject getStudentData(int total, HttpServletRequest request)
			throws SQLException, ClassNotFoundException {

		int totalAfterFilter = total;
		JSONObject result = new JSONObject();
		JSONArray array = new JSONArray();
		String searchSQL = "";

		try {
			Class.forName("org.postgresql.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		String connectionURL = connectionString;

		Connection connection = DriverManager.getConnection(connectionURL, username, password);
		// @formatter:off
		String sql = "SELECT " + "id, firstName, lastName, gender, address, "
				+ "grade " + "FROM " + "student ";

		// @formatter:on

		String globeSearch = " WHERE (firstName like '%" + SEARCH_TERM + "%'"
				+ "or lastName like '%" + SEARCH_TERM + "%'"
				+ "or gender like '%" + SEARCH_TERM + "%'"
				+ "or address like  '%" + SEARCH_TERM + "%'"
				+ "or grade like '%" + SEARCH_TERM + "%')";

		if (SEARCH_TERM != "") {
			searchSQL = globeSearch;
		}

		sql += searchSQL;
		sql += " order by " + COL_NAME + " " + DIR;

		sql += " limit " + AMOUNT + " offset " + START;

		//PreparedStatement statement = connection.prepareStatement(sql);
		//statement.setBoolean(1, false);
		
		PreparedStatement statement = connection.prepareStatement(sql);
		

		ResultSet rs = statement.executeQuery();

		while (rs.next()) {
			JSONArray ja = new JSONArray();

			ja.put(rs.getString("id"));
			ja.put(rs.getString("firstName"));
			ja.put(rs.getString("lastName"));
			ja.put(rs.getString("gender"));
			ja.put(rs.getString("address"));
			ja.put(rs.getString("grade"));

			array.put(ja);
		}
		statement.close();
		rs.close();

		// @formatter:off
		String query = "SELECT " + "COUNT(*) as count " + "FROM " + "student ";
		// @formatter:on

		if (SEARCH_TERM != "") {
			query += searchSQL;

			//PreparedStatement stmt = connection.prepareStatement(query);
			//stmt.setBoolean(1, false);
			
			PreparedStatement stmt = connection.prepareStatement("SELECT COUNT(*) as count FROM student");

			ResultSet resultSet = stmt.executeQuery();

			if (resultSet.next()) {
				totalAfterFilter = resultSet.getInt("count");
			}
			stmt.close();
			resultSet.close();
			connection.close();
		}
		try {
			result.put("iTotalRecords", total);
			result.put("iTotalDisplayRecords", totalAfterFilter);
			result.put("aaData", array);
		} catch (Exception e) {

		}

		return result;
	}

	public int getTotalRecordCount() throws SQLException {

		int total = -1;
		// @formatter:off
		String sql = "SELECT " + "COUNT(*) as count " + "FROM " + "student ";

		// @formatter:on

		String connectionURL = connectionString;
		try {
			Class.forName("org.postgresql.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}

		Connection connection = DriverManager.getConnection(connectionURL, username, password);

		PreparedStatement statement = connection.prepareStatement(sql);

		//statement.setBoolean(1, false);
		ResultSet resultSet = statement.executeQuery();

		if (resultSet.next()) {
			total = resultSet.getInt("count");
		}
		resultSet.close();
		statement.close();
		connection.close();

		return total;
	}

}
