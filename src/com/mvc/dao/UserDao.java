package com.mvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.mvc.bean.UserBean;
import com.mvc.util.DBUtil;

public class UserDao {
	List<UserBean> list=new ArrayList<>();
	Connection con=DBUtil.getDBConnection();
	
	public List<UserBean> viewUser() throws Exception{
		
		Statement stmt=con.createStatement();
		String sql="select * from users";
		ResultSet rs=stmt.executeQuery(sql);
		while(rs.next()){
			UserBean user=new UserBean();
			user.setUserId(rs.getInt("userId"));
			user.setName(rs.getString("name"));
			user.setPassword(rs.getString("password"));
			user.setAge(rs.getString("age"));
			user.setCountry(rs.getString("country"));
			user.setSalary(rs.getDouble("salary"));
			list.add(user);
			
		}
		return list;
	}
public List<UserBean> viewUserById(int userId) throws Exception{
		
		Statement stmt=con.createStatement();
		String sql="select * from users where userId="+userId+"";
		ResultSet rs=stmt.executeQuery(sql);
		while(rs.next()){
			UserBean user=new UserBean();
			user.setUserId(userId);
			user.setName(rs.getString("name"));
			user.setPassword(rs.getString("password"));
			user.setAge(rs.getString("age"));
			user.setCountry(rs.getString("country"));
			user.setSalary(rs.getDouble("salary"));
			list.add(user);
			
		}
		return list;
	}
	public int addUser(UserBean user) throws Exception{
		String sql="insert into users(name,password,age,country,salary) values(?,?,?,?,?)";
		PreparedStatement stmt=con.prepareStatement(sql);
		stmt.setString(1, user.getName());
		stmt.setString(2, user.getPassword());
		stmt.setString(3, user.getAge());
		stmt.setString(4, user.getCountry());
		stmt.setDouble(5, user.getSalary());
		return stmt.executeUpdate();
	}
	public int updateUser(UserBean user) throws Exception{
		String sql="update users set name=?,password=?,age=?,country=?,salary=? where userId=?";
		PreparedStatement stmt=con.prepareStatement(sql);
		stmt.setString(1, user.getName());
		stmt.setString(2, user.getPassword());
		stmt.setString(3, user.getAge());
		stmt.setString(4, user.getCountry());
		stmt.setDouble(5, user.getSalary());
		stmt.setInt(6, user.getUserId());
		return stmt.executeUpdate();
		
	}
	public int deleteUser(int id) throws Exception{
		String sql="delete from users where userId=?";
		PreparedStatement stmt=con.prepareStatement(sql);
		stmt.setInt(1, id);
		return stmt.executeUpdate();
		
	}

}
