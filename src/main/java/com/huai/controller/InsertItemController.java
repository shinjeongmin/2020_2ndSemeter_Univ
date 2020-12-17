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
@WebServlet("/InsertItemController") //
public class InsertItemController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    ItemDao itemDao ;
    public InsertItemController() {
        this.itemDao = new ItemDao();
    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Item item = new Item();
        item.setName(request.getParameter("name"));
        item.setCategory(request.getParameter("category"));
        item.setPrice(Integer.parseInt(request.getParameter("price")));
        Date form = (Date)request.getAttribute("date");
        item.setDate(form);

        System.out.println(item);

        int complete = itemDao.InsertItem(item);

        request.setAttribute("issuccess", complete);
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        doGet(request, response);
    }

}
