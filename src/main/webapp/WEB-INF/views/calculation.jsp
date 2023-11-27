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
  <tr><td colspan="4"><input type="text" name="display" value="<%= display %>" readonly></td></tr>
  <tr>
    <td><input type="button" class="push_num" name="dentaku" value="7" onclick="clickDisplay()"></td>
    <td><input type="button" class="push_num" name="dentaku" value="8" onclick="clickDisplay()"></td>
    <td><input type="button" class="push_num" name="dentaku" value="9" onclick="clickDisplay()"></td>
    <td><input type="button" class="push_ope" name="operator" value="÷" onclick="clickDisplay()"></td>
  </tr>
  <tr>
    <td><input type="button" class="push_num" name="dentaku" value="4" onclick="clickDisplay()"></td>
    <td><input type="button" class="push_num" name="dentaku" value="5" onclick="clickDisplay()"></td>
    <td><input type="button" class="push_num" name="dentaku" value="6" onclick="clickDisplay()"></td>
    <td><input type="button" class="push_ope" name="operator" value="×" onclick="clickDisplay()"></td>
  </tr>
  <tr>
    <td><input type="button" class="push_num" name="dentaku" value="1" onclick="clickDisplay()"></td>
    <td><input type="button" class="push_num" name="dentaku" value="2" onclick="clickDisplay()"></td>
    <td><input type="button" class="push_num" name="dentaku" value="3" onclick="clickDisplay()"></td>
    <td><input type="button" class="push_ope" name="operator" value="-" onclick="clickDisplay()"></td>
  </tr>
  <tr>
    <td><input type="button" class="push_num" name="dentaku" value="0" onclick="clickDisplay()"></td>
    <td><input type="reset" class="push_num" name="clear" value="C" onclick="clear_display()"></td>
    <td><input type="submit" class="push_poe_eq" name="operator_eq" value="="></td>
    <td><input type="button" class="push_ope" name="operator" value="+" onclick="clickDisplay()"></td>
  </tr>
  </tbody>
  </table>
</form>
</body>
</html>