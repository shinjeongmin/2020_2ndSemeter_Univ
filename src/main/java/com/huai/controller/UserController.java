package com.huai.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.huai.dao.UserDao;
import com.huai.model.User;

/**
 * Servlet implementation class UserController
 */
@WebServlet("/UserController") //This is very important
public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	UserDao userDao ;
	public UserController() {
		this.userDao = new UserDao();
	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String useridStr = request.getParameter("id");
		//test
		System.out.println("user ID = "+useridStr);

		User newUser = userDao.getUserByID2(useridStr);
		System.out.println(newUser);

		request.setAttribute("user", newUser);
//		RequestDispatcher view = request.getRequestDispatcher("showUser.jsp");
//		view.forward(request, response);


		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
