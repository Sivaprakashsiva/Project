<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <link rel="stylesheet" href="bootstrap.min.css">
<script src="bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<form class="form-horizontal" action="AddServlet" method="post">
<div class="well well-lg">
<center> <h1 >Add User</h1></center>
     <h3> <li class="nav navbar-nav pull-right"><a href='ViewServlet'>View User</a></li></h3>
</div>
 <div>
    
    <div class="col-sm-offset-1 col-sm-10">
      <label  for="pwd">Name</label>
      <input class="form-control" type="text" name="name"/>
    </div>
    <div class="col-sm-offset-1 col-sm-10">
      <label  for="pwd">Password</label>
     <input class="form-control" type="password" name="password"/>
    </div>
     <div class="col-sm-offset-1 col-sm-10">
      <label  for="pwd">Age</label>
      <input class="form-control" type="text" name="age"/>
    </div>
    <div  class="col-sm-offset-1 col-sm-10">
      <label  for="pwd">Country</label>
     <select  class="form-control" name="country" style="width: 1240px;">
               <option value = "Ind">India</option>
               <option value = "Usa">Aus</option>
               <option value = "Aus">Eng</option>
               <option value = "Eng">Usa</option>
             </select>
    </div>
      <div  class="col-sm-offset-1 col-sm-10">
      <label  for="pwd">Salary</label>
     <input class="form-control" type="text" name="salary" />
    </div>
     <div  class="col-sm-offset-1 col-sm-10">
     <center><br>
    <input type="submit"  class="btn btn-success"  value="Submit" />
    </div>
</form>
</body>
</html>