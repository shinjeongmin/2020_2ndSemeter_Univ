package com.huai.model;

import java.util.Date;

public class Item {
    private int itemId;
    private String Name;
    private String category;
    private int price;
    private Date date;


    @Override
    public String toString() {
        return "User [" +
                "itemId=" + itemId + "," +
                "Name=" + Name + "," +
                "category=" + category + "," +
                "price=" + price + "," +
                "date=" + date + ","
                + "]";
    }

    public int getItemId() {
        return itemId;
    }

    public void setItemId(int itemId) {
        this.itemId = itemId;
    }

    public String getName() {
        return Name;
    }

    public void setName(String name) {
        Name = name;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }
}
