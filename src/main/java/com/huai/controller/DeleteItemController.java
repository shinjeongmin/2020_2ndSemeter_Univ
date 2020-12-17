package com.huai.controller;

import java.io.IOException;
import java.util.Date;
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
@WebServlet("/DeleteItemController") //
public class DeleteItemController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    ItemDao itemDao ;
    public DeleteItemController() {
        this.itemDao = new ItemDao();
    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String name = request.getParameter("name");

        int complete = itemDao.deleteItemByName(name);

        request.setAttribute("issuccess", complete);
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        doGet(request, response);
    }

}
