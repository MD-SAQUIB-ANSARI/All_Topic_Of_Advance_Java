package com.mypack.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mypack.model.User;

public class UserDao {

	private Connection conn;
	private PreparedStatement pst;
	private String sql;
	private ResultSet rs;
	public UserDao() throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sagar", "root", "root");
		System.out.println("Load driver");
	}
	public Boolean validatin(User user) throws SQLException
	{
		sql="select * from user where userName=? and userPassword=?";
		pst= conn.prepareStatement(sql);
		pst.setString(1, user.getUserName());
		pst.setString(2, user.getUserPassword());
		
		rs= pst.executeQuery();
		if(rs.next()==true)
			return true;
		else
			return false;
	
	}
}
