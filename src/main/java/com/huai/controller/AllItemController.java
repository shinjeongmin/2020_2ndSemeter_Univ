package com.huai.controller;

import java.io.IOException;
import java.util.List;

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
@WebServlet("/AllItemController") //
public class AllItemController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    ItemDao itemDao ;
    public AllItemController() {
        this.itemDao = new ItemDao();
    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        List<Item> newItem = itemDao.getAllItems();

        request.setAttribute("items", newItem);
//        RequestDispatcher view = request.getRequestDispatcher("showItem.jsp");
//        view.forward(request, response);


        //response.getWriter().append("Served at: ").append(request.getContextPath());
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        doGet(request, response);
    }

}
