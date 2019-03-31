package com.sush.marketShoppingB.test;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import model.dao.ICategoryDAO;
import model.entity.Category;

public class CategoryTestCase {
private static AnnotationConfigApplicationContext context;
	
	@Autowired
	private static ICategoryDAO catDAO;
	
	
	private Category c=new Category();
	
	
	@BeforeClass
	public static void init() {
		context = new AnnotationConfigApplicationContext();
		context.scan("model");//BASE PACKAGE OF ICategoryDAO
		context.refresh();
		catDAO = (ICategoryDAO)context.getBean("catDAO");
	}
	

	@Test
	public void testCRUDCategory() {
		
		// add operation
		c = new Category();
		
		c.setName("FRUITS");
		c.setDescription("FRESH FROM AROUND THE WORLD!");
		c.setImageurl("pomo.jpg");
		
		assertEquals("Successfully added a category inside the table!",true,catDAO.add(c));
		
		
		c = new Category();
		
		c.setName("VEGETABLES");
		c.setDescription("ALWAYS ORGANIC!");
		c.setImageurl("veggies.jpg");
		
		assertEquals("Successfully added a category inside the table!",true,catDAO.add(c));

		c = new Category();
		
		c.setName("OILS");
		c.setDescription("OILS THAT AWAKEN THE SOUL");
		c.setImageurl("oils.jpg");
		
		assertEquals("Successfully added a category inside the table!",true,catDAO.add(c));

		
		// fetching and updating the category
		//c = catDAO.get(1);
		
		//c.setName("deli");
		
		//assertEquals("Successfully updated a single category in the table!",true,catDAO.update(c));
		
		
		// delete the category
		//assertEquals("Successfully deleted a single category in the table!",true,catDAO.delete(c));
		
	
		
		//fetching the list
		//assertEquals("Successfully fetched the list of categories from the table!",3,catDAO.list().size());		
				
		
	}
	
	//@Test
	//public void testDeleteCategory() {
		
		//c = catDAO.get(7);		
		//assertEquals("Successfully deleted a single category in the table!",true,catDAO.delete(c));
		
		
	//}

}
