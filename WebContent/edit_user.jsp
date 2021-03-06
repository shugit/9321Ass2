<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ page import="java.util.*"%>
<%@ page import="model.bean.*"%>
<%@ page import="model.handler.*"%>
<%@ page import="model.handlerInterface.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head><link rel="stylesheet" href="style.css" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Edit User</title>
<script src="js/jquery-1.10.2.js"></script>
<script>
	$(function() {
		$("#header").load("header.jsp");
		$("#footer").load("footer.jsp");
	});
</script>
</head>
<body>
	<div id="header"></div>
<div id="container">
	<h1>Edit User</h1>
	<%
	String myUsername= (String) request.getSession()
			.getAttribute("user");
	String sid=(String) request.getParameter("id");
	if(myUsername.compareTo(new UserHandler().getUserById(Integer.parseInt(sid)).getUsername() ) == 0 ) {		
		int id=Integer.parseInt(sid);
		UserHandlerInterface ui=new UserHandler();
		User u=ui.getUserById(id);
	%>
	<form action="edit_user" method="post">
		<table width="80%" border="0">
			<tbody>
				<tr>
					<th scope="row" style="width: 179px; ">Username*</th>
					<td><label id="username" value="uu"><%=u.getUsername() %></label>&nbsp; <input
						type="hidden" name="user_name" value="<%=u.getUsername()%>"></td>
      </tr>
      <tr>
        <th scope="row">Email*</th>
        <td><input type="text" name="email" value="<%=u.getEmail()%>"></td>

      </tr>
      
      <tr>
        <th scope="row">Nickname</th>
        <td><input type="text" name="nickname" value="<%=u.getNickname()%>"></td>
      </tr>
      
      <tr>
        <th scope="row">Password*<br>(Keep empty if don't change)</th>
        <td><input type="text" name="password" id="textfield3"><label
						for="textfield2"></label></td>
      </tr>
      <tr>
        <th scope="row">First name</th>
        <td><label for="textfield">
          <input type="text" name="firstname" value="<%=u.getFirstname() %>">

        </label></td>
      </tr>
      <tr>
        <th scope="row">Last Name</th>
        <td><label for="textfield3">
          <input type="text" name="lastname" value="<%=u.getLastname() %>">
        </label></td>
      </tr>
      
      <tr>
        <th scope="row"><input type="submit" value="Submit"></th>
        <td><p>
          <input type="reset" name="reset" id="reset" value="Reset">
          <br>
        </p></td>
      </tr>
    </tbody>
  </table>
  </form>
  <%} else {
  	out.println("you are not authorized to view this page");
  } %>
</div>
<%@ include file="footer.jsp"%>