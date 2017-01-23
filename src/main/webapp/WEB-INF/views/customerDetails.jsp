<!DOCTYPE html> 

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>

<body>
<img src="http://localhost:8080/examples/servlets/images/large_pizza.jpg" style="width:100%;height:200px;">
<div style="height:100px;"></div>

<form:form modelAttribute="order" action="${flowExecutionUrl}">

<div style="height:100px;"></div>
<div style="font-family: Verdana, Arial, Helvetica, sans-serif;font-size: 16px;">
 
 
<table width=100%"><tr><td align="center">
<table width="30%"  border="0" cellspacing="3" cellpadding="1">
<tr>
    <td><spring:message code="firstName"/></td>
    <td><form:input path="cust.firstName"/></td>
    <td><form:errors path="cust.firstName" cssClass="error"/></td>
</tr>
<tr>
    <td><spring:message code="lastName"/></td>
    <td><form:input path="cust.lastName"/></td>
    <td><form:errors path="cust.lastName" cssClass="error"/></td>
</tr>
<tr>
    <td><spring:message code="email"/></td>
    <td><form:input path="cust.emailAddress"/></td>
    <td><form:errors path="cust.emailAddress" cssClass="error"/></td>
</tr></table>
</td></tr>

<tr><td><table style="height:30px;"><tr><td></td></tr></table></td></tr>

<tr><td align="center">
<table width="20%"  border="0" cellspacing="3" cellpadding="1">
<tr><td>
    <button type="submit" id="next" name="_eventId_next">
    <spring:message code="next"/>
    </button>
</td>
<td><button type="submit" id="cancel" name="_eventId_cancel">
<spring:message code="cancel"/>
</button></td></tr>
</table>


</td></tr>
</table>
</div>
</form:form>
</body>