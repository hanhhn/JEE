<%@ page
	import="com.ajax.bigexample.StudentModel,java.util.*"%><!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
	var basePath = '${pageContext.request.contextPath}';
</script>
<link type="text/css" rel="stylesheet" media="all" href="${pageContext.request.contextPath}/lib/datatable/css/demo_table_jui.css" >
<link type="text/css" rel="stylesheet" media="all" href="${pageContext.request.contextPath}/lib/jquery-ui/css/redmond/jquery-ui-1.8.11.custom.css" >
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/js/jquery-1.5.2.min.js" ></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/js/jquery-ajax-form-plugin/jquery.form.js" ></script>	
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/datatable/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/jquery-ui/js/jquery-ui-1.8.11.custom.min.js" ></script>

<script type="text/javascript" src="${pageContext.request.contextPath}/lib/js/table-demo.js"></script> 	

<title>Student Form</title>
</head>
<body>
	<form>
		<div class="titleDiv">Student List</div>
		<div class="clearfix"></div>
		
		<div class="formDiv">
			<table border="0" margin="0" padding="0" width="100%"
				class="dataTables_wrapper" id="studentListTable">
				<thead>
					<tr>
						<th>Id</th>
						<th>First Name</th>
						<th>Last Name</th>
						<th>Gender</th>
						<th>Address</th>
						<th>Grade</th>
					</tr>
				</thead>
				<tbody>
					<%
					  if(request.getAttribute("studentList") != null)
					  {
						List<StudentModel> studentList = (List<StudentModel>)request.getAttribute("studentList");
					%>
					<% 
						 if( studentList != null )
						 {		
							for (StudentModel student: studentList) 
							{	
					%>	
							<tr>							
						 		<td><%=student.getSttudentId()%></td>
								<td><%=student.getFirstName()%></td>
								<td><%=student.getLastName()%></td>
								<td><%=student.getGender()%></td>
								<td><%=student.getAddress()%></td>
								<td><%=student.getGrade()%></td>
									
							</tr>
					       <%}
					     }
					
					  }%> 
				
					</tbody>
			</table>
		</div>
	</form>
</body>
</html>
