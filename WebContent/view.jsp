<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <link rel="stylesheet" href="bootstrap.min.css">
<script src="bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<form class="form-control" action="menu.jsp" method="post" >
<nav class="navbar navbar-inverse">
<center><h1 style="color:white;">User Details</h1></center>
<ul class="nav navbar-nav pull-right">
      <li class="nav"><a href='menu.jsp'><span class="glyphicon glyphicon-user"></span> Add User</a></li>
</ul>
</nav>
<table class="table table-bordered"><thead>
<tr><th>UserId</th><th>Name</th><th>Password</th><th>Age</th><th>Country</th><th>Salary</th><th>Edit</th><th>Delete</th></tr>
</thead><c:forEach var="user" items="${list}">
<tbody><tr>
<td><c:out value="${user.userId }" /></td><td><c:out value="${user.name}" /></td><td><c:out value="${user.password}" />
</td><td><c:out value="${user.age}" /></td><td><c:out value="${user.country}" /></td><td><c:out value="${user.salary}" /></td>
<td><a href='UpdateServlet2?userId=${user.userId }'>Edit</a></td><td><a href='DeleteServlet?userId=${user.userId }'>Delete</a></td></tr>
</c:forEach>
</tbody></table><br><br>
<center>
   <input type="submit"  class="btn btn-success"  value="Add User" />
   </center>
</form>
<body>

</body>
</html>