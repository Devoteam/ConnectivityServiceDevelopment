package com.devoteam.csd.backend.controller;

import com.devoteam.csd.backend.service.ProductService;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.web.servlet.MockMvc;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.content;
import org.springframework.boot.test.mock.mockito.MockBean;

@WebMvcTest(Controller.class)
class ControllerTest {

	@Autowired
	MockMvc mvc;

	@MockBean
	ProductService productService;

	@Test
	void test_alive() throws Exception {
		this.mvc.perform(get("/alive")).andExpect(status().isOk())
				.andExpect(content().string("OK"));
	}
}
