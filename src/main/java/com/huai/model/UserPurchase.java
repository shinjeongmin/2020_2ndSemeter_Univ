package com.huai.model;

public class UserPurchase {
	private String userid;
	private String itemname;

	@Override
	public String toString() {
		return "UserPurchase [" +
				"userid=" + userid + "," +
				"itemname=" + itemname
				+ "]";
	}

	public String getItemname(){
		return itemname;
	}
	public void setItemname(String itemname) {
		this.itemname = itemname;
	}
	public String getUserid(){
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
}
