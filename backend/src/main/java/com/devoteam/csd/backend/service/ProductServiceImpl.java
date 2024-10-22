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

  @Override
  public List<ProductEntity> getProducts() {
    return productRepository.findAllProductsNoImage();
  }

  @Override
  public byte[] getProductImage(long id) {
    Optional<ProductEntity> productEntity = productRepository.findById(id);
    if (productEntity.isPresent()) {
      try {
        System.out.println("ProductEntity was found.");
        System.out.println("Content length: " + productEntity.get().getImage().length());
        byte[] imageBytes = productEntity.get().getImage().getBytes(1, (int) productEntity.get().getImage().length());
        // String base64Image =  Base64.getEncoder().encodeToString(imageBytes);
        // return base64Image.getBytes();
        return imageBytes;
      } catch (Exception e) {
        System.out.println(e.getMessage());
      }
    }
    System.out.println("ProductEntity was not found.");
    return null;
  }
}
