package com.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnDB {
	
	private static String url = "jdbc:oracle:thin:@10.10.84.39:1521:xe";
	
	private static String user = "tao";
	
	private static String password = "123";
	
	private static Connection conn;
	
	public static Connection getConn(){
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			//new oracle.jdbc.driver.OracleDriver();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		try {
			conn = DriverManager.getConnection(url, user, password);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return conn;
	}
	
	public static void main(String[] args){
		ConnDB cd = new ConnDB();
		cd.getConn();
	}

}
