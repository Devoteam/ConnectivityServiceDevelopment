package com.devoteam.csd.backend.service;

import com.devoteam.csd.backend.entity.ProductEntity;
import com.devoteam.csd.backend.repository.ProductRepository;
import java.util.ArrayList;
import java.util.List;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.mock.mockito.MockBean;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNull;
import static org.mockito.Mockito.when;
import static org.junit.jupiter.api.Assertions.assertNotNull;

@SpringBootTest
public class ProductServiceImplTest {

  @Autowired
  private ProductService productService;
  @MockBean
  private ProductRepository productRepository;

  /**
   * Tests getting product list with a non-empty list.
   */
  @Test
  void test_getProducts_ok() {
    // mock data
    List<ProductEntity> productList = new ArrayList<>();
    ProductEntity product1 = new ProductEntity(5L, "Functions on Demand", "Ambientebeleuchtung",
        "Erleben Sie umfassendes Wohlbefinden");
    productList.add(product1);

    // mock method
    when(productRepository.findAllProductsNoImage()).thenReturn(productList);

    // do the test
    List<ProductEntity> result = productService.getProducts();
    assertNotNull(result);
    assertEquals(productList, result);
  }

  /**
   * Tests getting product list with an empty list.
   */
  @Test
  void test_getProducts_empty() {
    // mock data
    List<ProductEntity> productList = new ArrayList<>();

    // mock method
    when(productRepository.findAllProductsNoImage()).thenReturn(productList);

    // do the test
    List<ProductEntity> result = productService.getProducts();
    assertNotNull(result);
    assertEquals(productList, result);
  }

  /**
   * Tests getting product list with a null value as list
   */
  @Test
  void test_getProducts_null() {
    // mock method
    when(productRepository.findAllProductsNoImage()).thenReturn(null);

    // do the test
    List<ProductEntity> result = productService.getProducts();
    assertNull(result);
  }
}
