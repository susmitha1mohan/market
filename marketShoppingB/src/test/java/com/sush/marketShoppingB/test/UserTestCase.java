package com.sush.marketShoppingB.test;

import org.junit.BeforeClass;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import model.dao.IUserDAO;
import model.entity.Address;
import model.entity.Cart;
import model.entity.User;

public class UserTestCase {
	
	private static AnnotationConfigApplicationContext context;
	private static IUserDAO userDAO;
	private User user = null;
	private Address address = null;
	private Cart cart = null;
	
	@BeforeClass
	public static void init()
	{
		context = new AnnotationConfigApplicationContext();
		context.scan("model");
		context.refresh();
		
		userDAO = (IUserDAO)context.getBean("userDAO");
	}

}
