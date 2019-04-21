package com.leyou.controller;

import com.leyou.common.vo.Common;
import com.leyou.common.vo.PageResult;
import com.leyou.item.pojo.Brand;
import com.leyou.item.pojo.User;
import com.leyou.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("user")
public class UserController {

    @Autowired
    private UserService userService;

    @PostMapping("register")
    public ResponseEntity<Common<Boolean>> register(@RequestBody User user) {
        Common<Boolean> res = this.userService.regist(user);
        return ResponseEntity.ok(res);
    }

}
