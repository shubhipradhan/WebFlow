package comWebFlow.controller;



import java.util.ArrayList;
import java.util.List;

import org.springframework.binding.message.MessageBuilder;
import org.springframework.binding.message.MessageContext;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.webflow.action.EventFactorySupport;
import org.springframework.webflow.execution.Event;

import com.WebFlow.domain.Customer;
import com.WebFlow.domain.Order;
import com.WebFlow.domain.Pizza;

@Component("pizzaOrderController")
@Controller
public class PizzaOrderController {
	
	public Order createOrder(){
		Order order = new Order();
		Customer cust = new Customer();
		order.setCust(cust);
		return order;
	}
	
	public Pizza createPizza(){
		return  new Pizza();
		
	}
	
	public List<String> initPizzaList(){
		List<String> pizzaList = new ArrayList<String>();
		pizzaList.add("NY Cheese Pizza");
		pizzaList.add("Indian Spicy Pizza");
		pizzaList.add("Italian Special Pizza");
		
		return pizzaList;
	}
	
	public void addPizza(Order order,Pizza pizza){
		System.out.println("Customer: "+order.getCust());
		int size= order.getPizzaList()==null? 0:order.getPizzaList().size();
		System.out.println("piz size: "+size);
		System.out.println("Piz name:"+pizza.getName());
		order.addPizza(pizza);
	}
	
	public void clearPizzas(Order order){
		order.clearPizzas();
	}
	
	public String hasComplementaryDrinks(Order order){
		String outcome = "no";
		for(Pizza pizza: order.getPizzaList()){
			if("Indian Spicy Pizza".equals(pizza.getName())){
				outcome = "yes";
				break;
			}
		}
		return outcome;
	}
	public Event validateCust(Order order, MessageContext messageContext){
		System.out.println("In validate method");
		if(order.getCust().getFirstName() == null || order.getCust().getFirstName().trim() == ""){
			MessageBuilder errorMessageBuilder = new MessageBuilder().error();
			errorMessageBuilder.source("cust.firstName");
			errorMessageBuilder.code("firstName.req");
			messageContext.addMessage(errorMessageBuilder.build());
			return new EventFactorySupport().error(this);
		}
		return new EventFactorySupport().success(this);
	}
	
	public void submitOrder(Order order){
		
	}
}
