package com.WebFlow.domain;


import java.io.Serializable;

public class Pizza implements Serializable{
	private static final long serialVersionUID = 10008L;
	
	private String name;
	private int quantity;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	
	
	
	
	
	
}
