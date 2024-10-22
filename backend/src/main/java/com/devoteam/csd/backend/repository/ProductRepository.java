package com.devoteam.csd.backend.repository;

import com.devoteam.csd.backend.entity.ProductEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ProductRepository extends JpaRepository<ProductEntity, Long> {
}
