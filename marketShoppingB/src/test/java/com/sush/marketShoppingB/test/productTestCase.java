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
	public void testCRUDProduct() {
		
		// add operation
		p = new Product();
				
				p.setName("STRAWBERRY");
				p.setBrand("AUSTRIAN BERRIES");
				p.setCategoryID(9);
				p.setActive(true);
				p.setSupplierID(1);
				p.setQuantity(20);
				p.setUnitPrice(120);
				p.setDescription("FRESH FROM THE ORGANIC FARMS!");
				assertEquals("OOPS!Something went wrong",true,proDAO.add(p));
				
		p = new Product();
				
				p.setName("BANANA");
				p.setBrand("INDIAN ORIGIN");
				p.setCategoryID(9);
				p.setActive(true);
				p.setSupplierID(2);
				p.setQuantity(20);
				p.setUnitPrice(80);
				p.setDescription("FRESH FROM THE ORGANIC FARMS!");
				assertEquals("OOPS!Something went wrong",true,proDAO.add(p));
				
		p = new Product();
				
				p.setName("ALPHONSO MANGO");
				p.setBrand("INDIAN");
				p.setCategoryID(9);
				p.setActive(true);
				p.setSupplierID(3);
				p.setQuantity(20);
				p.setUnitPrice(100);
				p.setDescription("FRESH FROM THE ORGANIC FARMS!");
				assertEquals("OOPS!Something went wrong",true,proDAO.add(p));
				
		p = new Product();
				
				p.setName("RAW MANGO");
				p.setBrand("INDIAN");
				p.setCategoryID(9);
				p.setActive(true);
				p.setSupplierID(4);
				p.setQuantity(20);
				p.setUnitPrice(30);
				p.setDescription("FRESH FROM THE ORGANIC FARMS!");
				assertEquals("OOPS!Something went wrong",true,proDAO.add(p));
				
				
		p = new Product();
				
				p.setName("APPLE");
				p.setBrand("WASHINGTON APPLE");
				p.setCategoryID(9);
				p.setActive(true);
				p.setSupplierID(5);
				p.setQuantity(20);
				p.setUnitPrice(120);
				p.setDescription("FRESH FROM THE ORGANIC FARMS!");
				assertEquals("OOPS!Something went wrong",true,proDAO.add(p));
				
				
		p = new Product();
				
				p.setName("ORANGE");
				p.setBrand("SPAIN ORANGES");
				p.setCategoryID(9);
				p.setActive(true);
				p.setSupplierID(6);
				p.setQuantity(20);
				p.setUnitPrice(120);
				p.setDescription("FRESH FROM THE ORGANIC FARMS!");
				assertEquals("OOPS!Something went wrong",true,proDAO.add(p));
				
				
				p = new Product();
				
				p.setName("GREEN PEAS");
				p.setBrand("INDIAN");
				p.setCategoryID(10);
				p.setActive(true);
				p.setSupplierID(7);
				p.setQuantity(20);
				p.setUnitPrice(20);
				p.setDescription("FRESH FROM THE ORGANIC FARMS!");
				assertEquals("OOPS!Something went wrong",true,proDAO.add(p));
				
					p = new Product();
				
				p.setName("BRINJAL");
				p.setBrand("INDIAN");
				p.setCategoryID(10);
				p.setActive(true);
				p.setSupplierID(8);
				p.setQuantity(20);
				p.setUnitPrice(33);
				p.setDescription("FRESH FROM THE ORGANIC FARMS!");
				assertEquals("OOPS!Something went wrong",true,proDAO.add(p));
				
					p = new Product();
				
				p.setName("TOMATO");
				p.setBrand("INDIAN");
				p.setCategoryID(10);
				p.setActive(true);
				p.setSupplierID(9);
				p.setQuantity(20);
				p.setUnitPrice(20);
				p.setDescription("FRESH FROM THE ORGANIC FARMS!");
				assertEquals("OOPS!Something went wrong",true,proDAO.add(p));
				
					p = new Product();
				
				p.setName("RADISH");
				p.setBrand("INDIAN");
				p.setCategoryID(10);
				p.setActive(true);
				p.setSupplierID(10);
				p.setQuantity(20);
				p.setUnitPrice(15);
				p.setDescription("FRESH FROM THE ORGANIC FARMS!");
				assertEquals("OOPS!Something went wrong",true,proDAO.add(p));
				
					p = new Product();
				
				p.setName("ONION");
				p.setBrand("INDIAN");
				p.setCategoryID(10);
				p.setActive(true);
				p.setSupplierID(11);
				p.setQuantity(20);
				p.setUnitPrice(25);
				p.setDescription("FRESH FROM THE ORGANIC FARMS!");
				assertEquals("OOPS!Something went wrong",true,proDAO.add(p));
				
					p = new Product();
				
				p.setName("CABBAGE");
				p.setBrand("INDIAN");
				p.setCategoryID(10);
				p.setActive(true);
				p.setSupplierID(12);
				p.setQuantity(20);
				p.setUnitPrice(10);
				p.setDescription("FRESH FROM THE ORGANIC FARMS!");
				assertEquals("OOPS!Something went wrong",true,proDAO.add(p));
				
					p = new Product();
				
				p.setName("CARROTS");
				p.setBrand("OOTY CARROT");
				p.setCategoryID(10);
				p.setActive(true);
				p.setSupplierID(13);
				p.setQuantity(20);
				p.setUnitPrice(45);
				p.setDescription("FRESH FROM THE ORGANIC FARMS!");
				assertEquals("OOPS!Something went wrong",true,proDAO.add(p));
				
				p = new Product();
				
				p.setName("AUSTRALIAN OIL LAVENDER ");
				p.setBrand("ANVEYA");
				p.setCategoryID(11);
				p.setActive(true);
				p.setSupplierID(14);
				p.setQuantity(20);
				p.setUnitPrice(445);
				p.setDescription("OILS THAT HEAL!");
				assertEquals("OOPS!Something went wrong",true,proDAO.add(p));
				
				p = new Product();
				
				p.setName("AUSTRALIAN OIL TEA TREE ");
				p.setBrand("ANVEYA");
				p.setCategoryID(11);
				p.setActive(true);
				p.setSupplierID(14);
				p.setQuantity(20);
				p.setUnitPrice(645);
				p.setDescription("OILS THAT HEAL");
				assertEquals("OOPS!Something went wrong",true,proDAO.add(p));
				
				p = new Product();
				
				p.setName("AUSTRALIAN OIL PEPPERMINT ");
				p.setBrand("ANVEYA");
				p.setCategoryID(11);
				p.setActive(true);
				p.setSupplierID(14);
				p.setQuantity(20);
				p.setUnitPrice(545);
				p.setDescription("OILS THAT HEAL");
				assertEquals("OOPS!Something went wrong",true,proDAO.add(p));
				
				p = new Product();
				
				p.setName("AUSTRALIAN OIL LEMONGRASS ");
				p.setBrand("ANVEYA");
				p.setCategoryID(11);
				p.setActive(true);
				p.setSupplierID(14);
				p.setQuantity(20);
				p.setUnitPrice(345);
				p.setDescription("OILS THAT HEAL");
				assertEquals("OOPS!Something went wrong",true,proDAO.add(p));
				
				p = new Product();
				
				p.setName("AUSTRALIAN OIL ORANGE ");
				p.setBrand("ANVEYA");
				p.setCategoryID(11);
				p.setActive(true);
				p.setSupplierID(14);
				p.setQuantity(20);
				p.setUnitPrice(495);
				p.setDescription("OILS THAT HEAL");
				assertEquals("OOPS!Something went wrong",true,proDAO.add(p));
				
	
		 //fetching and updating the category
		//p = proDAO.get(1);
		
		//p.setUnitPrice(80000);
		
		//assertEquals("OOPS!Something went wrong",true,proDAO.update(p));
		
		// delete the category
	    //assertEquals("OOPS!Something went wrong",true,proDAO.delete(p));
		
		
		//fetching the list
		//assertEquals("OOPS!Something went wrong",6,proDAO.list().size());		
				
		
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
