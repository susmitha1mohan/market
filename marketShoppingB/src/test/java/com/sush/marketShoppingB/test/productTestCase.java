package com.sush.marketShoppingB.test;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import model.dao.IProductDAO;
import model.entity.Product;

public class productTestCase {
	
private static AnnotationConfigApplicationContext context;
	
	@Autowired
	private static IProductDAO proDAO;
	
	
	private Product p=new Product();
	
	
	@BeforeClass
	public static void init() {
		context = new AnnotationConfigApplicationContext();
		context.scan("model");//BASE PACKAGE OF IProductDAO
		context.refresh();
		proDAO = (IProductDAO)context.getBean(IProductDAO.class);
	}
	
	@Test
	public void testListActiveProducts()
	{
		assertEquals("OOPS!Something went wrong",5,proDAO.listActiveProducts().size());
	}
	
	@Test
	public void testListActiveProductsByCategory()
	{
		assertEquals("OOPS!Something went wrong",3,proDAO.listActiveProductsByCategory(3).size());
		assertEquals("OOPS!Something went wrong",2,proDAO.listActiveProductsByCategory(1).size());
	}
	
	@Test
	public void testGetLatestActiveProduct()
	{
		assertEquals("OOPS!Something went wrong",3,proDAO.getLatestActiveProducts(3).size());
	}

}
