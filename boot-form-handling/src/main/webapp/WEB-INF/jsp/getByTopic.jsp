<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page session="false"%>
<html>
<head>
<title>Show publication</title>
</head>
<style type="text/css">
table.purpleHorizon {
  border: 4px solid #792396;
  background-color: #555555;
  width: 600px;
  text-align: center;
  border-collapse: collapse;
}
table.purpleHorizon td, table.purpleHorizon th {
  border: 1px solid #555555;
  padding: 6px 3px;
}
table.purpleHorizon tbody td {
  font-size: 20px;
  font-weight: bold;
  color: #FFFFFF;
}
table.purpleHorizon tr:nth-child(even) {
  background: #CC3BFC;
}
table.purpleHorizon thead {
  background: #792396;
  border-bottom: 4px solid #792396;
}
table.purpleHorizon thead th {
  font-size: 19px;
  font-weight: bold;
  color: #FFFFFF;
  text-align: left;
  border-left: 2px solid #792396;
}
table.purpleHorizon thead th:first-child {
  border-left: none;
}

table.purpleHorizon tfoot {
  font-size: 13px;
  font-weight: bold;
  color: #FFFFFF;
  background: #CE3CFF;
  background: -moz-linear-gradient(top, #da6dff 0%, #d34fff 66%, #CE3CFF 100%);
  background: -webkit-linear-gradient(top, #da6dff 0%, #d34fff 66%, #CE3CFF 100%);
  background: linear-gradient(to bottom, #da6dff 0%, #d34fff 66%, #CE3CFF 100%);
  border-top: 5px solid #792396;
}
table.purpleHorizon tfoot td {
  font-size: 20px;
}
table.purpleHorizon tfoot .links {
  text-align: right;
}
table.purpleHorizon tfoot .links a{
  display: inline-block;
  background: #792396;
  color: #FFFFFF;
  padding: 2px 8px;
  border-radius: 5px;
}

</style>
<body bgcolor="#CB8CE9"  style="background-image:url(https://www.tvo.org/sites/default/files/styles/full_width_1280/public/article-thumbnails/summer%20reading.JPG)">
	<jsp:include page="menu.jsp" />
	 <center>     
	<h3 style="color: red;">The publication with specified Topic is</h3>
	<center><table class="purpleHorizon" border="2", bordercolor = "red" ,bgcolor = "white">
		<c:forEach var="listValue" items="${works}">
		<tr><td>${listValue.workid}</td>
		    <td>${listValue.topic}</td>
		    <td>${listValue.venue}</td>
		    
		    <td>${listValue.organiser}</td>
		    <td>${listValue.location}</td>
		</tr>
		</c:forEach>
	</table></center>
</body>
</html>