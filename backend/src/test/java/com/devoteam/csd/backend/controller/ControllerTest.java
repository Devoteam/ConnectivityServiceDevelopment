package com.devoteam.csd.backend.controller;

import com.devoteam.csd.backend.entity.ProductEntity;
import com.devoteam.csd.backend.service.ProductService;
import java.util.ArrayList;
import java.util.List;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.web.servlet.MockMvc;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.ArgumentMatchers.anyLong;
import static org.mockito.Mockito.when;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.content;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.test.web.servlet.MvcResult;
import com.google.gson.Gson;

@WebMvcTest(Controller.class)
@ContextConfiguration(classes = {Controller.class})
class ControllerTest {

	@Autowired
	MockMvc mvc;

	@MockBean
	ProductService productService;

	final Gson gson = new Gson();

	/**
	 * Test for /alive endpoint
	 * @throws Exception an exception
	 */
	@Test
	void test_alive() throws Exception {
		this.mvc.perform(get("/alive")).andExpect(status().isOk())
				.andExpect(content().string("OK"));
	}

	/**
	 * Test for /products endpoint returning a non-empty list
	 * @throws Exception an exception
	 */
	@Test
	void test_products_ok() throws Exception {
		// mock data
		List<ProductEntity> productList = new ArrayList<>();
    ProductEntity product1 = new ProductEntity(1L, "Infotainment Apps", "Pay to Park", "Tarifdschungel, nein danke!");
		ProductEntity product2 = new ProductEntity(2L, "Infotainment Apps", "Pay to Fuel", "Wir stellen vor: Pay to Fuel");
		productList.add(product1);
		productList.add(product2);
		when(productService.getProducts()).thenReturn(productList);
		this.mvc.perform(get("/products")).andExpect(status().isOk()).andExpect(content().json(gson.toJson(productList)));
	}

	/**
	 * Test for /products endpoint returning an empty list
	 * @throws Exception an exception
	 */
	@Test
	void test_products_emptyList() throws Exception {
		// mock data
		List<ProductEntity> productList = new ArrayList<>();
		when(productService.getProducts()).thenReturn(productList);
		this.mvc.perform(get("/products")).andExpect(status().isOk()).andExpect(content().json(gson.toJson(productList)));
	}

	/**
	 * Test for /products endpoint returning null
	 * @throws Exception an exception
	 */
	@Test
	void test_products_null() throws Exception {
		// mock data
		when(productService.getProducts()).thenReturn(null);
		MvcResult result = this.mvc.perform(get("/products")).andExpect(status().isOk()).andReturn();
		String content = result.getResponse().getContentAsString();
		assertEquals("", content);
	}

	/**
	 * Test for /products/image/{} endpoint returning a non-empty byte array
	 * @throws Exception an exception
	 */
	@Test
	void test_productsImage_ok() throws Exception {
		// mock data
		byte[] imageData = "Hello image!".getBytes();
		when(productService.getProductImage(1L)).thenReturn(imageData);
		MvcResult result = this.mvc.perform(get("/products/image/1")).andExpect(status().isOk()).andReturn();
		assertNotNull(result);
		String content = result.getResponse().getContentAsString();
		assertEquals("Hello image!", content);
	}

	/**
	 * Test for /products/image/{} endpoint returning no image
	 * @throws Exception an exception
	 */
	@Test
	void test_productsImage_noImage() throws Exception {
		// mock data
		when(productService.getProductImage(anyLong())).thenReturn(null);
		this.mvc.perform(get("/products/image/1")).andExpect(status().isNotFound());
	}
}
