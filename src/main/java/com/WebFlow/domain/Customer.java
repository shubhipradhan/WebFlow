package com.WebFlow.domain;



import java.io.Serializable;

public class Customer implements Serializable{
	private static final long serialVersionUID = 10008L;
	
	private String firstName;
	private String lastName;
	private String streetAddress;
	private String city;
	private String emailAddress;
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getStreetAddress() {
		return streetAddress;
	}
	public void setStreetAddress(String streetAddress) {
		this.streetAddress = streetAddress;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getEmailAddress() {
		return emailAddress;
	}
	public void setEmailAddress(String emailAddress) {
		this.emailAddress = emailAddress;
	}
	
	public String toString(){
		return "First Name: "+firstName+" Last Name: "+lastName;
	}
	
}
