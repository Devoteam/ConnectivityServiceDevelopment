package com.devoteam.csd.backend.service;

import com.devoteam.csd.backend.entity.ProductEntity;
import com.devoteam.csd.backend.repository.ProductRepository;
import java.sql.Blob;
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

import java.util.Optional;

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

  /**
   * Tests getting a product image
   */
  @Test
  void test_getProductImage_ok() throws Exception {
    ProductEntity product = new ProductEntity(1L, "Infotainment", "Traffication",
        "Die App verbessert Ihre Sicherheit");

    byte[] bytes = "My image".getBytes();
    Blob image = new javax.sql.rowset.serial.SerialBlob(bytes);
    product.setImage(image);

    when(productRepository.findById(1L)).thenReturn(Optional.of(product));
    byte[] result = productService.getProductImage(1L);
    assertEquals("My image", new String(result));
  }

  /**
   * Tests getting a product image where the product does not have an image
   */
  @Test
  void test_getProductImage_noImage() {
    ProductEntity product = new ProductEntity(1L, "Infotainment", "Traffication",
        "Die App verbessert Ihre Sicherheit");

    when(productRepository.findById(1L)).thenReturn(Optional.of(product));
    byte[] result = productService.getProductImage(1L);
    assertNull(result);
  }

  /**
   * Tests getting a product image where the product was not found
   */
  @Test
  void test_getProductImage_noProductFound() throws Exception {
    when(productRepository.findById(1L)).thenReturn(Optional.empty());
    byte[] result = productService.getProductImage(1L);
    assertNull(result);
  }

  /**
   * Tests getting a product image where an exception is thrown while getting the image
   */
  @Test
  void test_getProductImage_exceptionGettingImage() {
    when(productRepository.findById(1L)).thenThrow(new NullPointerException());
    byte[] result = productService.getProductImage(2L);
    assertNull(result);
  }
}
