package com.huai.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.huai.dao.ItemDao;
import com.huai.model.Item;

/**
 * Servlet implementation class ItemController
 */
@WebServlet("/ItemController") //
public class ItemController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    ItemDao itemDao ;
    public ItemController() {
        this.itemDao = new ItemDao();
    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String itemnameStr = request.getParameter("name");

        Item newItem = itemDao.getItemByID(itemnameStr);

        request.setAttribute("item", newItem);
//        RequestDispatcher view = request.getRequestDispatcher("showItem.jsp");
//        view.forward(request, response);


        //response.getWriter().append("Served at: ").append(request.getContextPath());
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        doGet(request, response);
    }

}
