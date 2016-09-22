package com.sportscart.handler;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.binding.message.MessageBuilder;
import org.springframework.binding.message.MessageContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;


import com.sportscart.model.BillingAddress;
import com.sportscart.model.CardDetail;
import com.sportscart.model.Cart;
import com.sportscart.model.CartItem;
import com.sportscart.model.CheckoutDetails;
import com.sportscart.model.OrderDetail;
import com.sportscart.model.OrderedItems;
import com.sportscart.model.Product;
import com.sportscart.model.ShippingAddress;
import com.sportscart.model.User;
import com.sportscart.service.BillingAddressService;
import com.sportscart.service.CardDetailService;
import com.sportscart.service.CartItemService;
import com.sportscart.service.CartService;
import com.sportscart.service.OrderDetailService;
import com.sportscart.service.OrderedItemsService;
import com.sportscart.service.ProductService;
import com.sportscart.service.ShippingAddressService;
import com.sportscart.service.UserService;

@Component("flowController")
public class FlowController {
	
	@Autowired
	private ProductService productService;
	
	@Autowired
	private ShippingAddress shippingAddress;

	@Autowired
	private BillingAddress billingAddress;

	@Autowired
	private OrderDetail orderDetail;

	@Autowired
	private OrderedItems orderedItems;

	@Autowired
	private CardDetail cardDetail;

	@Autowired
	private ShippingAddressService shippingAddressService;

	@Autowired
	private BillingAddressService billingAddressService;

	@Autowired			
	private OrderedItemsService orderedItemsService;

	@Autowired
	private OrderDetailService orderDetailService;

	@Autowired
	private CardDetailService cardDetailService;
	
	@Autowired
	User user;
	
	@Autowired
	UserService userService;

	@Autowired
	CartService cartService;

	@Autowired
	Cart cart;

	@Autowired
	CartItemService cartItemService;
	
	@Autowired
	HttpSession httpSession;
	
	@Autowired
	Product product;
	
	CheckoutDetails checkoutDetails = new CheckoutDetails();	
	
	public CheckoutDetails initFlow() {
		user = userService.getByName(SecurityContextHolder.getContext()
				.getAuthentication().getName());
		checkoutDetails.setCart(cartService.get(user.getUserId()));
		checkoutDetails.setUser(userService.getByName(user.getUsername()));
		return checkoutDetails;
	}
	
	public String addShippingAddress(CheckoutDetails checkoutDetails, ShippingAddress shippingAddress) {
		user = userService.getByName(SecurityContextHolder.getContext().getAuthentication().getName());
		shippingAddress.setUserId(user.getUserId());
		checkoutDetails.setShippingAddress(shippingAddress);

		this.shippingAddress.setUserId(user.getUserId());
		this.shippingAddress.setLine1(shippingAddress.getLine1());
		this.shippingAddress.setLine2(shippingAddress.getLine2());
		this.shippingAddress.setCity(shippingAddress.getCity());
		this.shippingAddress.setState(shippingAddress.getState());
		this.shippingAddress.setCountry(shippingAddress.getCountry());
		this.shippingAddress.setZipCode(shippingAddress.getZipCode());

		return "success";
	}
	
	public String addBillingAddress(CheckoutDetails checkoutDetails, BillingAddress billingAddress) {
		user = userService.getByName(SecurityContextHolder.getContext().getAuthentication().getName());
		billingAddress.setUserId(user.getUserId());
		checkoutDetails.setBillingAddress(billingAddress);

		this.billingAddress.setUserId(user.getUserId());
		this.billingAddress.setLine1(billingAddress.getLine1());
		this.billingAddress.setLine2(billingAddress.getLine2());
		this.billingAddress.setCity(billingAddress.getCity());
		this.billingAddress.setState(billingAddress.getState());
		this.billingAddress.setCountry(billingAddress.getCountry());
		this.billingAddress.setZipCode(billingAddress.getZipCode());

		return "success";
	}
	
	public String addCardDetails(CheckoutDetails checkoutDetails, CardDetail cardDetail) {
		user = userService.getByName(SecurityContextHolder.getContext().getAuthentication().getName());

		cardDetail.setUserId(user.getUserId());
		cardDetail.setTotalCost(cartService.get(user.getUserId()).getGrandTotal());
		cardDetailService.addCardDetail(cardDetail);

		List<CartItem> listCartItem = cartItemService.getList(user.getUserId());

		listCartItem = cartItemService.getList(user.getUserId());

		cart = cartService.get(user.getUserId());

		cart.setCartId(cart.getCartId());
		cart.setUserId(cart.getUserId());
		cart.setNoOfProducts(listCartItem.size());

		shippingAddressService.addShippingAddress(checkoutDetails.getShippingAddress());
		billingAddressService.addBillingAddress(checkoutDetails.getBillingAddress());
		cartService.addCart(cart);

		httpSession.setAttribute("noOfProducts", cart.getNoOfProducts());

		return "success";
	}
	
	public String validateShippingDetails(ShippingAddress shippingAddress,MessageContext messageContext){
		String status = "success";
		if(shippingAddress.getLine1().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"line1").defaultText("Line1 cannot be Empty").build());
			status = "failure";
		}
		if(shippingAddress.getLine2().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"line2").defaultText("Line2 cannot be Empty").build());
			status = "failure";
		}
		if(shippingAddress.getCity().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"city").defaultText("City cannot be Empty").build());
			status = "failure";
		}
		if(shippingAddress.getState().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"state").defaultText("State cannot be Empty").build());
			status = "failure";
		}
		if(shippingAddress.getCountry().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"country").defaultText("Country cannot be Empty").build());
			status = "failure";
		}
		if(shippingAddress.getZipCode().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"zipCode").defaultText("Zipcode cannot be Empty").build());
			status = "failure";
		}
		return status;
	}

}
