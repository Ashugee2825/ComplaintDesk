<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="parti.complaint.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Iterator" %>
<!DOCTYPE html>
<html>
<head>
<style>
.form-submit-button {
background: #0066A2;
color: white;
border-style: outset;
border-color: #0066A2;
height: 30px;
width: 70px;
font: bold17px arial,sans-serif;
text-shadow: none;
}
</style>
<!--  Begin: Date Picker -->
<link href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.1/themes/base/jquery-ui.css" rel="stylesheet" />
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.1/jquery-ui.min.js"></script>
<script>
    $(document).ready(function () {
    	$('input[id$=complaintDt]').datepicker({
    	    dateFormat: 'dd-mm-yy'
    	});
    });
    $(document).ready(function () {
    	$('input[id$=updateBy]').datepicker({
    	    dateFormat: 'dd-mm-yy'
    	});
    });
    $(document).ready(function () {
    	$('input[id$=updateTime]').datepicker({
    	    dateFormat: 'dd-mm-yy'
    	});
    });
    $(document).ready(function () {
    	$('input[id$=updatedt]').datepicker({
    	    dateFormat: 'dd-mm-yy'
    	});
    });
</script>
<!-- End: Date Picker -->
<style>
div#banner {
background-color: white;
height: 120px;
}
div#main {
border: solid 2px blue;
margin-left: 100px;
min-height: 300px;
background-color: yellow;
}
div#leftMenu {
background-color: green;
width: 80px;
position: relative;
top: 0px;
min-height: 300px;
}
div#topMenu {
border: 0px solid red;
background-color: orange;
}
div#main {
border: 2px solid red;
background-color: red;
}
div#content {
border: 2px solid red;
background-color: red;
}
.mycontainer {
    background-color:white;
    display:flex;
}
.fixed-left-menu {
    background-color:white;
    width: 200px;
}
.flex-item {
    background-color:white;
    flex-grow: 1;
}
</style>
</head>
<meta charset="ISO-8859-1">
<title>Dashboard Template</title>
</head>
<body>
<div id="outer">
<!-- begin: banner -->
<div id="banner" align="center">
<img alt="nitttr-bpl" src="banner.jpg" width="70%" height="100%" >
</div>
<!-- begin: banner -->
<br/>
<!--  begin: top menu -->
<div id="topMenu" class="topMenu">
<%@include file="topMenu.jsp" %>
</div>
<!--  end: top menu -->
<!--  begin: container -->
<div class="mycontainer">
    
    <!-- begin: side navigation -->
    <%@include file="leftMenu.jsp" %>
    <!-- end: side navigation -->
    
    <!--  begin: main content -->
    <div class="flex-item" align="center">
    
    <h1>Main Content</h1>
    
    <!--  Begin: Dynamic Codes -->

<%
Complaint complaint = (Complaint)request.getAttribute("complaint");
String homeURL=(String)request.getSession().getAttribute("homeURL");
%>
<form action="" id="myform"  name="myform" accept-charset="UTF-8" >

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

<input type="hidden" name="page" value= "viewComplaint">
<input type="hidden" name="id" value= "<%=complaint.getId()%>">
</form>

<button type="submit" form="myform"  name="opr" value= "print" class="form-submit-button">Print</button>
<a href="<%=homeURL%>"><button type="button" class="form-submit-button">Close</button></a> 
   <!--  End: Dynamic Codes -->
    </div>
    <!--  end: main content -->
</div>
<!--  end: container -->
</div>
</body>
</html>
