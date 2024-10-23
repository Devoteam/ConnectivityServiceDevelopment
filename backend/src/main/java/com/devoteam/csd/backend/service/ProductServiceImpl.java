package com.devoteam.csd.backend.service;

import com.devoteam.csd.backend.controller.Controller;
import com.devoteam.csd.backend.entity.ProductEntity;
import com.devoteam.csd.backend.repository.ProductRepository;
import java.io.InputStream;
import java.sql.Blob;
import java.util.Base64;
import java.util.List;
import java.util.Optional;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProductServiceImpl implements ProductService {
  @Autowired
  private ProductRepository productRepository;

  Logger log = LoggerFactory.getLogger(ProductServiceImpl.class);

  /**
   * Gets a list of products sorted by product name ascending.
   *
   * @return the list of product entities
   */
  @Override
  public List<ProductEntity> getProducts() {
    return productRepository.findAllProductsNoImage();
  }

  /**
   * Gets the product image from database by the product id.
   *
   * @param id the product id
   * @return the product image as byte array
   */
  @Override
  public byte[] getProductImage(long id) {
    Optional<ProductEntity> productEntity = productRepository.findById(id);
    if (productEntity.isPresent()) {
      try {
        System.out.println("ProductEntity was found.");
        System.out.println("Content length: " + productEntity.get().getImage().length());
        return productEntity.get().getImage().getBytes(1, (int) productEntity.get().getImage().length());
      } catch (Exception e) {
        System.out.println(e.getMessage());
      }
    }
    System.out.println("ProductEntity was not found.");
    return null;
  }
}
