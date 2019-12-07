<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Publication</title>
</head>
<jsp:include page="menu.jsp" />
<body bgcolor="#CB8CE9">

<center>
	<h3 style="color: red;">topic query</h3>

	<div id="addpub">
		<form action="/getpubByTopic" method="post">
			<p>
				<label>Enter publication Topic</label>
				<input type="text" name="topic" />
			</p>
			<input type="SUBMIT" value="Submit" />
		</form>
	</div></center>
</body>
</html>