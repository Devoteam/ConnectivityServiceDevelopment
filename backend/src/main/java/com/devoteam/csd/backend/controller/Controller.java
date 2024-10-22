package com.devoteam.csd.backend.controller;

import java.util.ArrayList;
import java.util.List;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/")
public class Controller {

  Logger log = LoggerFactory.getLogger(Controller.class);

    /**
   * Returns OK if the controller is alive.
   *
   * @return ResponseEntity String OK Status 200
   */
  @GetMapping("alive")
  public ResponseEntity<String> alive() {
    log.debug("Incoming GET /alive Request");
    String response = "OK";
    log.debug("Returning with Response: " + response);
    log.trace("ResponseEntity is: " + ResponseEntity.ok(response));
    return ResponseEntity.ok(response);
  }
}
