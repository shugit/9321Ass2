<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="head" id="head">Content for  class "head" id "head" Goes Here</div>
<div class="body" id="body"><h1>Movie</h1>
<form>
  <table width="80%" border="0">
    <tbody>
      <tr>
        <th width="22%" scope="row">id</th>
        <td width="78%">&nbsp;</td>
      </tr>
      <tr>
        <th scope="row">title</th>
        <td><label for="textfield2"></label>
          <input type="text" name="textfield2" id="textfield2"></td>
      </tr>
      <tr>
        <th scope="row">actors</th>
        <td><label for="textfield"></label>
          <input type="text" name="textfield" id="textfield"></td>
      </tr>
      <tr>
        <th scope="row">poster</th>
        <td><label for="textfield3"></label>
          <input type="text" name="textfield3" id="textfield3"></td>
      </tr>
      <tr>
        <th scope="row">release date</th>
        <td><label for="date"></label>
          <input type="date" name="date" id="date"></td>
      </tr>
      <tr>
        <th scope="row">synopsis</th>
        <td><label for="textfield4"></label>
          <input type="text" name="textfield4" id="textfield4"></td>
      </tr>
      <tr>
        <th scope="row">genres</th>
        <td><p>
          <label>
            <input type="checkbox" name="CheckboxGroup1" value="checkbox" id="CheckboxGroup1_0">
            Checkbox</label>
          <br>
          <label>
            <input type="checkbox" name="CheckboxGroup1" value="checkbox" id="CheckboxGroup1_1">
            Checkbox</label>
          <br>
        </p></td>
      </tr>
      <tr>
        <th scope="row">Now showing on</th>
        <td><table width="80%" border="0">
          <tbody>
            <tr>
              <th scope="col">Cinema</th>
              <th scope="col">Date&amp;Time</th>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
            </tr>
          </tbody>
        </table></td>
      </tr>
    </tbody>
  </table>
  </form>
</div>
<div class="foot" id="foot">Content for  class "foot" id "foot" Goes Here</div>
</body>
</html>