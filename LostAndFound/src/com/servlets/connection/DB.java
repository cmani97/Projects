package com.servlets.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DB {
	public static void main(String args[])
	{
		DB db = new DB();
		
		System.out.println(db.getConnection());
	}
	
	static String url="jdbc:mysql://localhost:3306/lostandfound";
	static String uname="root";
	static String pass="";
	public static Connection getConnection()
	{
		Connection con = null;
		System.out.println("connection called");
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection(url,uname,pass);
		}catch(ClassNotFoundException | SQLException e) {
			System.out.println("DB file exception "+e);
		}
		return con;
			
	}

}
