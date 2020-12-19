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
import com.huai.model.UserPurchase;

/**
 * Servlet implementation class InsertUserController
 */
@WebServlet("/InsertUserPurchaseItemController") //This is very important
public class InsertUserPurchaseItemController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    UserDao userDao ;
    public InsertUserPurchaseItemController() {
        this.userDao = new UserDao();
    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        UserPurchase userPurchase = new UserPurchase();
        userPurchase.setUserid(request.getParameter("userid"));
        userPurchase.setItemname(request.getParameter("itemname"));

        int complete = userDao.insertListByItemId(userPurchase);

        System.out.println("Insert success? : "+complete);

        request.setAttribute("issuccess", complete);
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        doGet(request, response);
    }

}
