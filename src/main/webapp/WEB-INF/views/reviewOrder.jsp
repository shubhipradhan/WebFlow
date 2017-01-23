<!DOCTYPE html> 

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>

<body>
<img src="http://localhost:8080/examples/servlets/images/large_pizza.jpg" style="width:100%;height:200px;">

<form:form modelAttribute="order" action="${flowExecutionUrl}">

<div style="height:100px;"></div>
 <div style="font-family: Verdana, Arial, Helvetica, sans-serif;font-size: 16px;">
 <table width=100%"><tr><td align="center">
 <table width="40%"  border="0" cellspacing="3" cellpadding="1">
 
 
<tr><td align="center"><table width="40%" border="0" cellspacing="3" cellpadding="1">

<tr><td><table style="height:14px;"><tr><td></td></tr></table></td></tr>

<tr><td align="center" style="font-weight: bold;"><spring:message code="custDetails"/></td></tr>

<tr><td align="center"><table width="100%" border="1" cellspacing="3" cellpadding="1">

<tr><td style="font-weight: bold;"><spring:message code="firstName"/></td><td>${order.cust.firstName}</td></tr>
<tr><td style="font-weight: bold;"><spring:message code="lastName"/></td><td>${order.cust.lastName}</td></tr>
<tr><td style="font-weight: bold;"><spring:message code="email"/></td><td>${order.cust.emailAddress}</td></tr>
</table></td></tr>

<tr><td><table style="height:14px;"><tr><td></td></tr></table></td></tr>
 
<tr><td align="center" style="font-weight: bold;"><spring:message code="pizzaDetails"/></td></tr>
<tr><td align="center"><table width="100%" border="1" cellspacing="3" cellpadding="1">

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