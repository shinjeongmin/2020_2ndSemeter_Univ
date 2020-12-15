package com.huai.model;

import java.util.Date;

public class User {
	private int userId;
	private String id;
	private String pwd;
	private String Name;
	private int money;
	private int shop_list;
	private Date date;

	public int getUserid() {
		return userId;
	}
	public void setUserid(int userId) {
		this.userId = userId;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getName() {
		return Name;
	}
	public void setName(String _Name) {
		this.Name = _Name;
	}
	public int getMoney() {
		return money;
	}
	public void setMoney(int money) {
		this.money = money;
	}
	public int getShop_list() {
		return shop_list;
	}

	public void setShop_list(int shop_list) {
		this.shop_list = shop_list;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}

	@Override
	public String toString() {
		return "User [" +
				"userId=" + userId + "," +
				" Name=" + Name + "," +
				" id=" + id + "," +
				" pwd=" + pwd + "," +
				" money=" + money + "," +
				" shop_list" + shop_list + "," +
				" date=" + date
				+ "]";
	}

}
