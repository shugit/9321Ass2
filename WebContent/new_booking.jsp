<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ page import="java.util.*"%>
<%@ page import="model.bean.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="head" id="head">Content for  class "head" id "head" Goes Here</div>
<div class="body" id="body">
<h1>Add Booking</h1>
<form>
  <table width="80%" border="0">
    <tbody>
    <%
    	Session s=(Session)request.getAttribute("session");
    %>
    <tr>
        <th scope="row">Movie</th>
        <td><label for="textfield2"><%=s.getMovie().getId() %> &amp;<%=s.getMovie().getTitle() %></label></td>
      </tr>
      <tr>
        <th scope="row">Cinema</th>
        <td><label for="textfield2"><%=s.getCinema().getId() %> &amp; <%=s.getCinema().getName() %></label></td>
      </tr>
      
      <tr>
        <th scope="row">Date&amp;Time</th>
        <td><label for="textfield2"><%=s.getShowDate() %></label></td>
      </tr>
      <tr>
        <th scope="row">Number</th>
        <td><input type="text" name="textfield" id="textfield"></td>
      </tr>
      <tr>
        <th scope="row">Cinema Owner</th>
        <td><label for="textfield3">owner</label></td>
      </tr>
      <tr>
        <th scope="row"><input type="submit" value="Submit"></th>
        <td><p><br>
        </p></td>
      </tr>
    </tbody>
  </table>
  </form>
</div>
<div class="foot" id="foot">Content for  class "foot" id "foot" Goes Here</div>
</body>
</html>