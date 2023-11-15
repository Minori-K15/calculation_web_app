<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>電卓</title>
</head>
<body>
<h1>電卓</h1>
<% String message = (String)request.getAttribute("message"); %>
<p><%= message %></p>
<form action="calculation" method="post">
<table>
  <tbody>
  <% String display = (String)request.getAttribute("display"); %>
  <tr><td colspan="4"><input type="text" name="display" value="<%= display %>" readonly style="width:100px;"></td></tr>
  <tr>
    <td><input class="push_num" type="submit" name="num" value="7"></td>
    <td><input class="push_num" type="submit" name="num" value="8"></td>
    <td><input class="push_num" type="submit" name="num" value="9"></td>
    <td><input class="push_ope" type="submit" name="operator" value="÷"></td>
  </tr>
  <tr>
    <td><input class="push_num" type="submit" name="num" value="4"></td>
    <td><input class="push_num" type="submit" name="num" value="5"></td>
    <td><input class="push_num" type="submit" name="num" value="6"></td>
    <td><input class="push_ope" type="submit" name="operator" value="×"></td>
  </tr>
  <tr>
    <td><input class="push_num" type="submit" name="num" value="1"></td>
    <td><input class="push_num" type="submit" name="num" value="2"></td>
    <td><input class="push_num" type="submit" name="num" value="3"></td>
    <td><input class="push_ope"type="submit" name="operator" value="-"></td>
      </tr>
      <tr>
      <td><input class="push_num" type="submit" name="num" value="0"></td>
      <td><input class="push_num" type="submit" name="clear" value="C"></td>
      <td><input class="push_poe_eq" type="submit" name="operator_eq" value="="></td>
      <td><input class="push_ope"type="submit" name="operator" value="+"></td>
      </tr>
     </tbody>
    </table>
</form>
</body>
</html>