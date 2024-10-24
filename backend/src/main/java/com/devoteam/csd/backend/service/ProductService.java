package com.devoteam.csd.backend.service;

import com.devoteam.csd.backend.entity.ProductEntity;
import java.io.InputStream;
import java.sql.Blob;
import java.util.List;

public interface ProductService {
  List<ProductEntity> getProducts();
  byte[] getProductImage(long id);
}
