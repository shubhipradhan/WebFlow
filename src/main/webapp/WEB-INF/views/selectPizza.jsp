<!DOCTYPE html> 

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>

<body>
<img src="http://localhost:8080/examples/servlets/images/large_pizza.jpg" style="width:100%;height:200px;">

<form:form modelAttribute="newpizza" action="${flowExecutionUrl}">

<div style="height:100px;"></div>
 <div style="font-family: Verdana, Arial, Helvetica, sans-serif;font-size: 16px;">
 <table width=100%"><tr><td align="center">
 <table width="40%"  border="0" cellspacing="3" cellpadding="1">
 
 <tr>
<td><spring:message code="selectPizza"/></td>
<td><form:select path="name" items="${pizzaList}"/></td>
</tr>
 <tr>
<td><spring:message code="quantity"/></td>
<td><form:input path="quantity"/></td>
</tr>
</table>
 </td>
</tr>

<tr><td><table style="height:30px;"><tr><td></td></tr></table></td></tr>

<tr><td align="center">
<table width="20%"  border="0" cellspacing="3" cellpadding="1">
<tr><td><button type="submit" id="add" name="_eventId_add">
<spring:message code="add"/>
</button>
</td><td><button type="submit" id="clear" name="_eventId_clear">
<spring:message code="clear"/>
</button></td>
</tr>
</table>
</td></tr>

<tr><td><table style="height:30px;"><tr><td></td></tr></table></td></tr>
<tr><td align="center" style="font-weight: bold;"><spring:message code="yourpizzas"/></td></tr>
<tr><td align="center"><table width="40%" border="1" cellspacing="3" cellpadding="1">

<tr><th><spring:message code="pizzaName"/></th><th><spring:message code="quantity"/></th></tr>
<c:forEach items="${order.pizzaList}" var="pizza">
<tr>
<td>${pizza.name}</td>
<td>${pizza.quantity}</td>
</tr>
</c:forEach>
</table></td></tr>

<tr><td><table style="height:14px;"><tr><td></td></tr></table></td></tr>

<tr><td align="center">
<table width="30%"  border="0" cellspacing="3" cellpadding="1">
<tr><td><button type="submit" id="previous" name="_eventId_previous">
<spring:message code="previous"/>
</button>
</td><td><button type="submit" id="next" name="_eventId_next">
<spring:message code="next"/>
</button></td>
<td><button type="submit" id="cancel" name="_eventId_cancel">
<spring:message code="cancel"/>
</button></td></tr>
</table>


</td></tr>
</table>
</td></tr></table>

</div>
</form:form>
</body>