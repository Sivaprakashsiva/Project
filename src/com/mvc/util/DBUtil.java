package com.mvc.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBUtil {
	public static Connection getDBConnection(){
		Connection con=null;
		try {
			Class.forName("com.mysql.jdbc.Driver");	
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb","root","");
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return con;
		
	}
//	public static void main(String[] args) {
//		System.out.println(getDBConnection());
//	}

}
