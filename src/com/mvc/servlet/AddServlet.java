package com.mvc.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mvc.bean.UserBean;
import com.mvc.dao.UserDao;

@WebServlet("/AddServlet")
public class AddServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UserBean user=new UserBean();
		UserDao sql=new UserDao();
		PrintWriter out=response.getWriter();
		String name=request.getParameter("name");
		String password=request.getParameter("password");
		String age=request.getParameter("age");
		String country=request.getParameter("country");
		double salary=Integer.parseInt(request.getParameter("salary"));
		user.setName(name);
		user.setPassword(password);
		user.setAge(age);
		user.setCountry(country);
		user.setSalary(salary);
		try {
			int add=sql.addUser(user);
			if(add>0)
				response.sendRedirect("ViewServlet");
			else
				out.println("Not Added");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
