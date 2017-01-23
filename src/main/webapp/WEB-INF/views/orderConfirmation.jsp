<!DOCTYPE html> 

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<body>
<img src="http://localhost:8080/examples/servlets/images/large_pizza.jpg" style="width:100%;height:200px;">

<div style="height:100px;"></div>
 <div style="font-family: Verdana, Arial, Helvetica, sans-serif;font-size: 16px;">
 <table width=100%"><tr><td align="center">
 <table width="40%"  border="0" cellspacing="3" cellpadding="1">
<tr><td>
<h1> <spring:message code="orderConfMsg"/>
 </h1>


</td></tr>
</table>
</td></tr></table>

</div>
</body>

</html>