package com.Controller;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import com.Bean.*;
import com.Dao.*;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class LoginServlet extends HttpServlet {
	
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String userName = request.getParameter("uname");
		String password = request.getParameter("upwd");
		
		LoginBean loginBean = new LoginBean();
		
		loginBean.setUserName(userName);
		loginBean.setPassword(password);
        
        LoginDao loginDao = new LoginDao();
        
        String userValidate = loginDao.authenticateUser(loginBean);
        
        HttpSession session=request.getSession();
		session.setAttribute("uname",userName);
        
        if(userValidate.equals("SUCCESS")) 
        {
            request.setAttribute("userName", userName); 
            request.getRequestDispatcher("/home.jsp").forward(request, response);
        }
        else
        {
            request.setAttribute("errMessage", userValidate);
            request.getRequestDispatcher("/login.html").forward(request, response);
        }
	}

}
