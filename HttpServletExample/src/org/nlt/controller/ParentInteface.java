package org.nlt.controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;

public interface ParentInteface 
{
	public static Connection con = getConnection();
	
	public static Connection getConnection() 
	{
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/httpservlet","root","");
			return con;
		} 
		catch (Exception e) 
		{
			System.out.println("Connectivity Issue");
			return null;
		}
	}
}
