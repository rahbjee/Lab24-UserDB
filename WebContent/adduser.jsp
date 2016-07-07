	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*" %>
<%@ page import="java.io.*,java.util.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ page import="edu.rahbjee.DAO"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Adding User to DB</title>
</head>
<body>
<h1>Adding User to DB</h1>
<%
//  		Connection con = null;
//  		Statement st = null;
//  		ResultSet rs = null;
//  		String url = "jdbc:mysql://localhost:3306/webproducts";
//  		//DO NOT include this info in .java files pushed to GitHub in real projects
//  		String user = "java";
//  		String password = "java123";
//  		try {
//  			Class.forName("com.mysql.jdbc.Driver");
//  			con = DriverManager.getConnection(url, user, password);
//  			st = con.createStatement();
//  			String createDB = "CREATE DATABASE IF NOT EXISTS usersDB;";
//  			String use = "USE usersDB";
//  			String createTbl = "CREATE TABLE IF NOT EXISTS user(ID int(255) NOT NULL AUTO_INCREMENT, Fullname varchar(80), Username varchar(10) NOT NULL, Password varchar(32) NOT NULL, Email varchar(80),  PRIMARY KEY(ID));";
//  			st.execute(createDB);
//  			st.execute(use);
//  			st.execute(createTbl);
//  			rs = st.executeQuery("SELECT * FROM user");
//  			if (!rs.next()) {
//  				PreparedStatement addUser = con
//  						.prepareStatement("INSERT INTO user (Username, Password, Email, Fullname) VALUES (?, ?, ?, ?)");
//  				}
//  		} catch (SQLException e) {
//  			out.println("DB Exception: " + e);
//  		}
%>
<jsp:useBean id="newuser" class="edu.rahbjee.User">  
</jsp:useBean>  
<jsp:setProperty property="*" name="newuser"/>
<%  
int i=DAO.addUser(newuser); 
if (i > 0)  
	out.print("User successfully added");  
else
	out.println("Error; product not added");
%>  
</body>
</html>