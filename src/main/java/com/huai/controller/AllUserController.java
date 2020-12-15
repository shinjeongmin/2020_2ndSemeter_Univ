package com.huai.controller;

import java.io.IOException;
import java.util.List;

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
@WebServlet("/AllUserController") //
public class AllUserController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    UserDao userDao ;
    public AllUserController() {
        this.userDao = new UserDao();
    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        List<User> newUser = userDao.getAllUsers();
        System.out.println(newUser);

        request.setAttribute("users", newUser);
        RequestDispatcher view = request.getRequestDispatcher("showAllUsers.jsp");
        view.forward(request, response);


        //response.getWriter().append("Served at: ").append(request.getContextPath());
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        doGet(request, response);
    }

}
