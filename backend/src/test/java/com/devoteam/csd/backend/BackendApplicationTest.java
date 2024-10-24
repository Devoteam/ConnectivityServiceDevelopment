package com.devoteam.csd.backend;

import static org.assertj.core.api.AssertionsForClassTypes.assertThat;

import com.devoteam.csd.backend.controller.Controller;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
public class BackendApplicationTest {
  @Autowired
  private Controller controller;

  @Test
  void contextLoads() {
    assertThat(controller).isNotNull();
  }
}
