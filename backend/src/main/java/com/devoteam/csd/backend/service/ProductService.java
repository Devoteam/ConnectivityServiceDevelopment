package com.devoteam.csd.backend.service;

import com.devoteam.csd.backend.entity.ProductEntity;
import java.util.List;

public interface ProductService {
  List<ProductEntity> getProducts();
}
