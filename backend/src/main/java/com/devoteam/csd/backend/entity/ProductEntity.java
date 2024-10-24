package com.devoteam.csd.backend.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Lob;
import jakarta.persistence.SequenceGenerator;
import jakarta.persistence.Table;
import java.sql.Blob;

/**
 * This is the product entity stored in database.
 *
 * @uthor volker.schneider@devoteam.com
 */
@Entity
@Table(name = "product")
public class ProductEntity {

  @Id
  @SequenceGenerator(name = "product_sequence", sequenceName = "product_sequence", allocationSize = 1, initialValue = 1)
  @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "product_sequence")
  @Column(name = "id")
  private Long id;

  private String category;

  @Column(name = "name", length = 2000)
  private String name;

  @Column(name = "description", length = 10000)
  private String description;

  @Lob
  private Blob image;

  public ProductEntity() {
  }

  /**
   * Special constructor for JPA custom query for omitting the product image.
   *
   * @param id the product id
   * @param category the product category
   * @param name te product name
   * @param description the product description
   */
  public ProductEntity(Long id, String category, String name, String description) {
    this.id = id;
    this.category = category;
    this.name = name;
    this.description = description;
  }

  public String getCategory() {
    return category;
  }

  public void setCategory(String category) {
    this.category = category;
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description;
  }

  public Blob getImage() {
    return image;
  }

  public void setImage(Blob image) {
    this.image = image;
  }

  public Long getId() {
    return id;
  }

  public void setId(Long id) {
    this.id = id;
  }
}
