package com.Util;
import java.sql.*;
public class DBConnection {
	public static Connection createConnection()
	{
		String driver="oracle.jdbc.driver.OracleDriver";
		String url="jdbc:oracle:thin:@localhost:1521:xe";
		String unamedb="system";
		String upwddb="vivek215";
	 
		Connection con=null;
		PreparedStatement ps=null;
	 
	 try {
		 try {
			 Class.forName(driver);  
	     } 
	     catch (ClassNotFoundException e){
	    	 e.printStackTrace();
	     } 
		 con = DriverManager.getConnection(url, unamedb,upwddb);
		 System.out.println("Printing connection object "+con);
	  } 
	  catch (Exception e){
		  e.printStackTrace();
	  }
	  return con;
	}
}
