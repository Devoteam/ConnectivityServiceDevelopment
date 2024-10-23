package com.devoteam.csd.backend.repository;

import com.devoteam.csd.backend.entity.ProductEntity;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface ProductRepository extends JpaRepository<ProductEntity, Long> {
  /**
   * Returns all products selecting all columns except the image.
   *
   * @return a list of products, returning image column as NULL
   */
  @Query(value = "SELECT NEW ProductEntity(pe.id,pe.category,pe.name,pe.description) FROM ProductEntity pe "
                  + "ORDER BY pe.name ASC ")
  List<ProductEntity> findAllProductsNoImage();
}
