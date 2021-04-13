<%--
Document : Process
Created on : 04-13-2021
Author : Harshal Chavan
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Process</title>
	</head>
	<body>
		<%
			String url="jdbc:mysql://localhost:3306/studentdb?zeroDateTimeBehavior=convertToNull";
			String user="root";
			String password="";
			String uname=request.getParameter("txtName");
			String tel=request.getParameter("txtTel");
			Connection conn;
			PreparedStatement ps;
			Statement st;
			ResultSet rs;
			// connection Initialization
			Class.forName("com.mysql.jdbc.Driver");
			conn=DriverManager.getConnection(url, user, password);
			try
			{
				//checking the record already exist in database or not
				st=conn.createStatement();
				rs=st.executeQuery("select * from teldir");
				while(rs.next()) {
					if(rs.getString(2).equals(uname)&& rs.getString(3).equals(tel)){%>
					<jsp:forward page="index.jsp">
					<jsp:param name="message" value="User is already exits, Give New Entry !!!" />
					</jsp:forward>
					<%
					}
				}
				//inserting record in database
				String sql="insert into teldir(name,telephone) values(?,?)";
				ps=conn.prepareStatement(sql);
				ps.setString(1,uname);
				ps.setString(2,tel);
				ps.executeUpdate();
				conn.close();
				out.println("<h3 align='center'>");
				out.println("Record inserted successfully");
				out.println("</h3>");
				out.println("<h3 align='center'>");
				out.println("Click "+"<a href='index.jsp'>here</a>"+"to Enter another record");
				out.println("</h3>");
			}
			catch(SQLException e){
				e.printStackTrace();
			}
		%>
	</body>
</html>