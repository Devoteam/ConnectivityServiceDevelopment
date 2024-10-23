package com.devoteam.csd.backend.controller;

import com.devoteam.csd.backend.entity.ProductEntity;
import com.devoteam.csd.backend.service.ProductService;
import java.io.InputStream;
import java.sql.Blob;
import java.util.ArrayList;
import java.util.List;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

/**
 * This class contains all end points for this application.
 */
@RestController
@RequestMapping("/")
public class Controller {

  @Autowired
  private ProductService productService;

  Logger log = LoggerFactory.getLogger(Controller.class);

  /**
   * Returns OK if the controller is alive.
   *
   * @return ResponseEntity String OK Status 200
   */
  @GetMapping("alive")
  public ResponseEntity<String> alive() {
    log.info("Incoming GET /alive Request");
    String response = "OK";
    log.trace("ResponseEntity is: {}", ResponseEntity.ok(response));
    return ResponseEntity.ok(response);
  }

  /**
   * Gets a list of all products sorted by product id ascending.
   *
   * @return A list of all products.
   */
  @GetMapping("products")
  public ResponseEntity<List<ProductEntity>> getProducts() {
    log.info("Incoming GET /products Request");
    List<ProductEntity> response = productService.getProducts();
    log.debug("Returned product entities: {}", response.size());
    log.debug("ResponseEntity is: {}", ResponseEntity.ok(response));
    return ResponseEntity.ok(response);
  }

  /**
   * Gets a particular product PNG image for a given product id.
   *
   * @return A list of all products.
   */
  @GetMapping(value = "products/image/{id}", produces = MediaType.IMAGE_PNG_VALUE)
  public ResponseEntity<byte[]> getProductImage(@PathVariable(name = "id", required = true) Long id) {
    log.info("Incoming GET /products Request");
    byte[] response = productService.getProductImage(id);
    if (response == null) {
      log.debug("No image found for product id: {}", id);
      return ResponseEntity.status(HttpStatus.NOT_FOUND).body(null);
    }
    log.debug("Image found for id: {}", id);
    log.debug("ResponseEntity is: {}", ResponseEntity.ok(response));
    return ResponseEntity.ok(response);
  }
}
