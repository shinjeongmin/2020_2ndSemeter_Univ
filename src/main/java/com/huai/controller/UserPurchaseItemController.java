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
import com.huai.model.Item;
import com.huai.model.User;
import com.huai.model.UserPurchase;

/**
 * Servlet implementation class UserController
 */
@WebServlet("/UserPurchaseItemController") //This is very important
public class UserPurchaseItemController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    UserDao userDao ;
    public UserPurchaseItemController() {
        this.userDao = new UserDao();
    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String useridStr = request.getParameter("id");
        System.out.println("Purchase User ID = "+useridStr);

        List<UserPurchase> userPurchases = userDao.getListById(useridStr);
//        int itemList = userDao.delete(useridStr);
        System.out.println("UserPurchases : " + userPurchases);

        request.setAttribute("userPurchases", userPurchases);
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        doGet(request, response);
    }

}
