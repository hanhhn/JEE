package com.ajax.bigexample;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet(description = "Table Demo", urlPatterns = { "/TableDemo" })
public class TableDemoAction extends HttpServlet {

	private String STUDENT_ID_LIST = "studentList";
	
	private String connectionString = "jdbc:postgresql://localhost:5432/BigExample?user=postgres&password=admin&ssl=true";

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		List<StudentModel> studentList = null;
		try {
			studentList = selectStudentInfo();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		System.out.println("======studentList :"+studentList);
		String destination = "/WEB-INF/views/table-demo.jsp";
		request.setAttribute(STUDENT_ID_LIST, studentList);

		RequestDispatcher rd = request.getRequestDispatcher(destination);
		rd.forward(request, response);

	}

	public List<StudentModel> selectStudentInfo() throws SQLException {

		List<StudentModel> al = new ArrayList<StudentModel>();

		// @formatter:off

		String query =

		" SELECT  id,firstName,lastName,gender,address,grade " +

		" FROM " +

		" student " +

		" order by id asc ";

		// @formatter:on
		String connectionURL = connectionString;
		try {
			Class.forName("org.postgresql.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}

		Connection connection = DriverManager.getConnection(connectionURL);
		Statement statement = connection.createStatement();
		ResultSet resultSet = statement.executeQuery(query);

		while (resultSet.next()) {

			StudentModel student = new StudentModel();
			student.setSttudentId(resultSet.getLong("id"));
			student.setFirstName(resultSet.getString("firstName"));
			student.setLastName(resultSet.getString("lastName"));
			student.setGender(resultSet.getString("gender"));
			student.setAddress(resultSet.getString("address"));
			student.setGrade(resultSet.getString("grade"));

			al.add(student);
		}

		resultSet.close();
		statement.close();

		return al;

	}

}
