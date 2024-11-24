<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="parti.complaint.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Iterator" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="tablecss1.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body {
  background: rgb(204,204,204); 
}
page {
  background: white;
  display: block;
  margin: 0 auto;
  margin-bottom: 0.5cm;
  
}
page[size="A4"] {  
  width: 21cm;
  height: 29.7cm; 
}
page[size="A4"][layout="landscape"] {
  width: 29.7cm;
  height: 21cm;  
}
page[size="A3"] {
  width: 29.7cm;
  height: 42cm;
}
page[size="A3"][layout="landscape"] {
  width: 42cm;
  height: 29.7cm;  
}
page[size="A5"] {
  width: 14.8cm;
  height: 21cm;
}
page[size="A5"][layout="landscape"] {
  width: 21cm;
  height: 14.8cm;  
}
@media print {
  body, page {
    margin: 0;
    box-shadow: 0;
  }
}
</style>
</head>
<body>
<page size="A4">
<div align="center">
<h1> Print Form Content </h1>
    <!--  Begin: Dynamic Codes -->

<%
Complaint complaint = (Complaint)request.getAttribute("complaint");
%>
<table cellspacing="10px">
<tr>
<td align="right">
ID:
</td>

<td>
<%=complaint.getId()%>
</td>

</tr>
<tr>
<td align="right">
COMPLAINT TYPE:
</td>

<td>
<%=complaint.getComplaintTypeValue()%>
</td>

</tr>
<tr>
<td align="right">
DETAIL:
</td>

<td>
<%=complaint.getDetail()%>
</td>

</tr>
<tr>
<td align="right">
COMPLAINT DT:
</td>

<td>
<%=DateService.getDTSDDMMYYYY(complaint.getComplaintDt()).equals("11-11-1111")?"":DateService.getDTSDDMMYYYY(complaint.getComplaintDt())%>
</td>

</tr>
<tr>
<td align="right">
UPDATE BY:
</td>

<td>
<%=DateService.getDTSDDMMYYYY(complaint.getUpdateBy()).equals("11-11-1111")?"":DateService.getDTSDDMMYYYY(complaint.getUpdateBy())%>
</td>

</tr>
<tr>
<td align="right">
UPDATE TIME:
</td>

<td>
<%=DateService.getDTSDDMMYYYY(complaint.getUpdateTime()).equals("11-11-1111")?"":DateService.getDTSDDMMYYYY(complaint.getUpdateTime())%>
</td>

</tr>
<tr>
<td align="right">
COMPLAINT STATUS:
</td>

<td>
<%=complaint.getComplaintStatusValue()%>
</td>

</tr>
<tr>
<td align="right">
UPDATE DT:
</td>

<td>
<%=DateService.getDTSDDMMYYYY(complaint.getUpdatedt()).equals("11-11-1111")?"":DateService.getDTSDDMMYYYY(complaint.getUpdatedt())%>
</td>

</tr>

</table>
</div>
</page>
<!-- <page size="A4"></page>
<page size="A4" layout="landscape"></page>
<page size="A5"></page>
<page size="A5" layout="landscape"></page>
<page size="A3"></page>
<page size="A3" layout="landscape"></page>
 -->
</body>
</html>
