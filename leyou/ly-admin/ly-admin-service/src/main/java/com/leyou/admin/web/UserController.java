package com.leyou.admin.web;


import com.leyou.admin.pojo.Comment;
import com.leyou.admin.pojo.Orders;
import com.leyou.admin.pojo.User;
import com.leyou.admin.service.OrderService;
import com.leyou.admin.service.UserService;
import com.leyou.common.vo.Common;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


@RestController
@RequestMapping("user")
public class UserController {

    @Autowired
    private UserService userService;

    @PostMapping("updateUser")
    public ResponseEntity<Common<Void>> updateUser(@RequestBody User user){
        return ResponseEntity.ok(userService.updateUser(user));
    }

}
