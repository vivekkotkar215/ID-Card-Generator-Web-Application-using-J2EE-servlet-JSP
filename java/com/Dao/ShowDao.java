package com.Dao;

import java.sql.*;

import com.Util.DBConnection;

public class ShowDao {
	public ResultSet ShowData(String name) {
		
		
		
		Connection con = null;
		Statement st = null;
		ResultSet rs = null;
    
		try
		{
			con = DBConnection.createConnection(); 
    		st = con.createStatement(); 
    		rs= st.executeQuery("select id,name,dob,course,batch from student where name=?");
		}
		catch(SQLException e)
        {
        	e.printStackTrace();
        }
		return rs;
	}
}
