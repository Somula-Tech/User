package com.example.user.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "/roster")
public class UserController {

    @GetMapping(value = "/users")
    public ResponseEntity<String> userProfile(){
        return ResponseEntity.ok("Successfully fetched the Users");
    }
}
