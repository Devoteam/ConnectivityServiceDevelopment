package com.devoteam.csd.backend.entity;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNull;

import java.sql.Blob;
import org.junit.jupiter.api.Test;

public class ProductEntityTest {
  @Test
  public void test_getterSetter() throws Exception {
    ProductEntity product = new ProductEntity();
    product.setId(3L);
    assertEquals(3L, product.getId());
    product.setCategory("Infotainment Apps");
    assertEquals("Infotainment Apps", product.getCategory());
    product.setName("Pay to Fuel");
    assertEquals("Pay to Fuel", product.getName());
    product.setDescription("Tarifdschungel, nein danke!");
    assertEquals("Tarifdschungel, nein danke!", product.getDescription());

    byte[] bytes = "This could be an image".getBytes();
    Blob image = new javax.sql.rowset.serial.SerialBlob(bytes);
    product.setImage(image);
    assertEquals(image, product.getImage());
  }

  @Test
  void test_constructor() {
    ProductEntity product = new ProductEntity(4L, "Infotainment Apps", "Pay to Fuel", "Tarifdschungel");
    assertEquals(4L, product.getId());
    assertEquals("Infotainment Apps", product.getCategory());
    assertEquals("Pay to Fuel", product.getName());
    assertEquals("Tarifdschungel", product.getDescription());
    assertNull(product.getImage());
  }
}
