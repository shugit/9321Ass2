<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*"%>
<%@ page import="model.bean.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="style.css" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Owner Detail</title>
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script>
	$(function() {
		$("#header").load("header.jsp");
		$("#footer").load("footer.jsp");
	});
</script>
</head>

<body>
	<div id="header"></div>
	<div class="body" id="body">
		<%
			Owner owner = (Owner) request.getAttribute("owner");
			if (owner != null) {
				String ownername = (String) request.getSession().getAttribute(
						"owner");
				if (ownername != null) {
		%>
		<h1>Your Profile</h1>
	  <table width="80%" border="0">
			<tbody>

				<tr>
					<th width="30%" height="40" scope="row">id</th>
					<td width="70%"><%=owner.getId()%></td>
				</tr>
				<tr>
					<th width="30%" height="40" scope="row">Username</th>
					<td width="70%"><%=owner.getUsername()%></td>
				</tr>

				<tr>
					<th scope="row">Password</th>
					<td><%=owner.getPassword()%></td>
				</tr>
			</tbody>
		</table>
		<hr>
		<br>
	  <table width="80%" border="0">
			<tbody>
				<tr>
					<th width="28%" scope="col">Type</th>
					<th width="72%" scope="col">Action</th>
				<tr>
					<td><label>add new Cinema</label></td>
					<td>
						<form name="form1" method="get" action="new_cinema.jsp">
							<input type="submit" value="Submit">
						</form>
					</td>
				</tr>
				<tr>
					<td><label>add new Movie</label></td>
					<td>
						<form name="form1" method="get" action="new_movie.jsp">
							<input type="submit" value="Submit">
						</form>
					</td>
				</tr>
			</tbody>
		</table>
		<hr>
		<br>
<%List<Booking> bs = (List<Booking>) request.getAttribute("bookings");
if(bs!=null && bs.size() > 0){ %>
		<table width="80%" border="0">
			<tbody>
				<tr><th scope="col">id</th>
					<th scope="col" width=100px>Action</th>
					<th scope="col">Bookings of Movie</th>
					<th scope="col">User(username)</th>
					<th scope="col">of Cinema</th>
					<th scope="col">of Session</th>
				</tr>
				<% for(Booking b : bs){ %>
				<tr><td><%=b.getId()%></td>
					<td>
						<form method="GET">
							<input type="hidden" name="booking_id" value="<%=b.getId()%>"> <input
								type="submit" id="submit" formaction="approve" value="Approve"><input
								type="submit" id="submit" formaction="decline" value="Decline">
						</form>
					</td>
					<td><%=b.getSession().getMovie().getTitle() %></td>
					<td><%=b.getUser().getUsername() %></td>
					<td><%=b.getSession().getCinema().getName() %></td>
					<td><%=b.getSession().getShowDate() %></td>
				</tr>
				<%} %>
			</tbody>
		</table>
		<%} else {
			out.println("no bookings are processing");
		} %>
		<%
			} else {
					out.println("no authorization to view this page");
				}
		%>

		<%
			} else {
				out.println("Owner does not exist!");

			}
		%>
	</div>

	<div id="footer"></div>