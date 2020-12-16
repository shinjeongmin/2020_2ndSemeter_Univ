package com.huai.controller;

import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
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
 * Servlet implementation class InsertUserController
 */
@WebServlet("/InsertUserController") //This is very important
public class InsertUserController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    UserDao userDao ;
    public InsertUserController() {
        this.userDao = new UserDao();
    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        User user = new User();
        user.setId(request.getParameter("id"));
        user.setPwd(request.getParameter("pwd"));
        user.setName(request.getParameter("name"));
        user.setMoney(Integer.parseInt(request.getParameter("money")));

////      String날짜를 Date형태로 파싱
//        String form = request.getParameter("date");
//        Date today = null;
//        try {
//            today = new SimpleDateFormat("yyyy-MM-dd").parse(form);
//        } catch (ParseException e) {
//            e.printStackTrace();
//        }
//        user.setDate(today);

        Date form = (Date)request.getAttribute("date");
        user.setDate(form);

        int complete = userDao.InsertUser(user);

        System.out.println("Insert user : "+user);
        System.out.println("Insert success? : "+complete);

        request.setAttribute("issuccess", complete);
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        doGet(request, response);
    }

}
