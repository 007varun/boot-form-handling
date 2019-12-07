<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
.navbar {
  background-color: #333;
  overflow: hidden;
}
.navbar a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}
.navbar a:hover {
  background-color: #ddd;
  color: black;
}
.navbar a.active {
  background-color: #4CAF50;
  color: white;
}

</style>
<div class ="navbar">

	<a href="${pageContext.request.contextPath}/welcome">welcome page</a> | &nbsp;
	<a href="${pageContext.request.contextPath}/addpub">Add a Publication</a> | &nbsp; 
	<a href="${pageContext.request.contextPath}/getpub">Show Publications</a> |&nbsp;
	<a href="${pageContext.request.contextPath}/getpubByID">Get a publication by ID</a> | &nbsp;
	<a href="${pageContext.request.contextPath}/getpubByTopic">Get Publication by Topic</a> | &nbsp;
	<a href="${pageContext.request.contextPath}/getpubByCollege">Get Publication by location</a>
	
</div>