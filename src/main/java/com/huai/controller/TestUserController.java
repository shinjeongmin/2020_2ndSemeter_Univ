package com.huai.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

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
@WebServlet("/TestUserController") //This is very important
public class TestUserController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    UserDao userDao ;
    public TestUserController() {
        this.userDao = new UserDao();
    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        User user = new User();
        user.setId(request.getParameter("id"));
        user.setPwd(request.getParameter("pwd"));
        user.setName(request.getParameter("name"));
        user.setMoney(Integer.parseInt(request.getParameter("money")));
        //      String날짜를 Date형태로 파싱
        Date form = (Date)request.getAttribute("date");
        user.setDate(form);

        int complete = userDao.InsertUser(user);

        System.out.println("Insert user : "+user);

        request.setAttribute("issuccess", complete);

        request.setAttribute("user", user);
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        doGet(request, response);
    }

}
