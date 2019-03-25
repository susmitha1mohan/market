package com.sush.marketShoppingB.test;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import model.dao.ICartLineDAO;
import model.dao.IProductDAO;
import model.dao.IUserDAO;
import model.entity.Cart;
import model.entity.CartLine;
import model.entity.Product;
import model.entity.User;

public class CartLineTestCase {
	
	private static AnnotationConfigApplicationContext context;
	private static ICartLineDAO cartLineDAO = null;
	private static IUserDAO userDAO = null;
	private static IProductDAO proDAO = null;
	
	private User user = null;
	private Cart cart = null;
	private Product pro = null;
	private CartLine cartLine = null;
	
	@BeforeClass
	public static void init()
	{
		context = new AnnotationConfigApplicationContext();
		context.scan("model");
		context.refresh();
		
		proDAO = (IProductDAO)context.getBean(IProductDAO.class);
		userDAO = (IUserDAO)context.getBean("userDAO");
		cartLineDAO = (ICartLineDAO)context.getBean("cartLineDAO");
	}
	
	@Test
	public void testUpdateCartLine() {

		// fetch the user and then cart of that user
		User user = userDAO.getByEmail("sm@gmail.com");		
		Cart cart = user.getCart();
				
		cartLine = cartLineDAO.getByCartAndProduct(cart.getId(), 1);
		
		cartLine.setProductCount(cartLine.getProductCount() + 1);
				
		double oldTotal = cartLine.getTotal();
				
		cartLine.setTotal(cartLine.getProduct().getUnitPrice() * cartLine.getProductCount());
		
		cart.setGrandTotal(cart.getGrandTotal() + (cartLine.getTotal() - oldTotal));
		
		assertEquals("Failed to update the CartLine!",true, cartLineDAO.update(cartLine));	

		
	}
	
	

}
