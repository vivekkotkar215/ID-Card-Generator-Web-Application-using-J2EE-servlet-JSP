package com.Dao;
import com.Bean.*;
import com.Util.*;
import java.sql.*;
public class LoginDao {
	public String authenticateUser(LoginBean loginBean)
    {
		String username = loginBean.getUserName();
        String password = loginBean.getPassword();

        Connection con = null;
        Statement st = null;
        ResultSet rs = null;

        String userNameDB = "";
        String passwordDB = "";

        try
        {
            con = DBConnection.createConnection(); 
            st = con.createStatement(); 
            rs= st.executeQuery("select uname,upwd from login");

            while(rs.next()) 
            {
            	userNameDB =rs.getString("uname");
            	passwordDB =rs.getString("upwd");

            	if(username.equals(userNameDB) && password.equals(passwordDB))
            	{
            		return "SUCCESS"; 
            	}
            }
        }
        catch(SQLException e)
        {
        	e.printStackTrace();
        }
        return "Invalid user name or password"; 
    }
}
