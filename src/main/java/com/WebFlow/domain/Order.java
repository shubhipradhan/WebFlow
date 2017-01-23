package com.WebFlow.domain;


import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class Order implements Serializable{
	
	private static final long serialVersionUID = 10008L;
	
	private Customer cust;
	private List<Pizza> pizzaList;
	
	
	public Customer getCust() {
		return cust;
	}
	public void setCust(Customer cust) {
		this.cust = cust;
	}
	public List<Pizza> getPizzaList() {
		return pizzaList;
	}
	public void setPizzaList(List<Pizza> pizzaList) {
		this.pizzaList = pizzaList;
	}
	
	public void addPizza(Pizza pizza){
		if(pizzaList == null){
			pizzaList = new ArrayList<Pizza>();
		}
		pizzaList.add(pizza);
	}
	
	public void clearPizzas(){
		if(pizzaList!=null){
			pizzaList.clear();
		}
	}
	
}
