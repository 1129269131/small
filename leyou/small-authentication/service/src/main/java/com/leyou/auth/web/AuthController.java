package com.leyou.auth.web;

import com.leyou.auth.service.AuthService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class AuthController {

    @Autowired
    private AuthService authService;

    @PostMapping("login")
    public ResponseEntity<Void> login(
            @RequestParam("username") String username,@RequestParam("password") String password
    ){
        String token = authService.login(username, password);
        return ResponseEntity.status(HttpStatus.NO_CONTENT).build();
    }

}
