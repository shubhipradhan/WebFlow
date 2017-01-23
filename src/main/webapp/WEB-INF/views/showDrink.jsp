<!DOCTYPE html> 

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>

<body>

<img src="http://localhost:8080/examples/servlets/images/large_pizza.jpg" style="width:100%;height:200px;">
<form:form modelAttribute="pizza" action="${flowExecutionUrl}">

<div style="height:100px;"></div>
<h1><spring:message code="complimentMsg"/></h1>
<div style="height:4px;"></div>


 <div style="font-family: Verdana, Arial, Helvetica, sans-serif;font-size: 10px;">
 <table width=100%"><tr><td align="center">
 <table width="40%"  border="0" cellspacing="3" cellpadding="1">
 
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


</td></tr></table>
</td></tr></table>
</div>

</form:form>
</body>

</html>