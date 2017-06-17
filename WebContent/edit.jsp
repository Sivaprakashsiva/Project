<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.mvc.bean.*"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="bootstrap.min.css">
<script src="bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<nav class="navbar navbar-inverse"  >
<center><h1 style="color:white;">Update User</h1></center>
<ul class="nav navbar-nav pull-right">
      <li class="nav"><a href='menu.jsp'><span class="glyphicon glyphicon-user"></span> Add User</a></li>
</ul>
</nav>
<body>
 <form class="form-horizontal" action="UpdateServlet" method="post" >
 
 <div><c:forEach var="user" items="${list}">
     <input class="form-control" type="hidden" name="userId" value="${user.userId}" />
    <div class="col-sm-offset-1 col-sm-10">
      <label  for="pwd">Name</label>
      <input class="form-control" type="text" name="name" value="${user.name}" />
    </div>
    <div class="col-sm-offset-1 col-sm-10">
      <label  for="pwd">Password</label>
     <input class="form-control" type="password" name="password" value="${user.password}"  />
    </div>
      <div class="col-sm-offset-1 col-sm-10">
      <label  for="pwd">Age</label>
     <input class="form-control" type="text" name="age" value="${user.age }" />
    </div>
    <div  class="col-sm-offset-1 col-sm-10">
      <label  for="pwd">Country</label>
     <select  class="form-control" name="country" value="${user.country}"  style="width: 1240px;" >
               <option value = "Ind">India</option>
               <option value = "Usa">Aus</option>
               <option value = "Aus">Eng</option>
               <option value = "Eng">Usa</option>
             </select>
    </div>
      <div  class="col-sm-offset-1 col-sm-10">
      <label  for="pwd">Salary</label>
     <input class="form-control" type="text" name="salary" value= "${user.salary }" />
    </div>
 </c:forEach>
     <div  class="col-sm-offset-2 col-sm-10">
     <center><br>
    <input type="submit"  class="btn btn-success"  value="Submit" />
    </div>
  </form>
</body>
</html>