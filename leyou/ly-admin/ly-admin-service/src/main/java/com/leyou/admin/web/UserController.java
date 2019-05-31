package com.leyou.admin.web;


import com.leyou.admin.pojo.User;
import com.leyou.admin.service.UserService;
import com.leyou.common.vo.Common;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;


@RestController
@RequestMapping("user")
public class UserController {

    @Autowired
    private UserService userService;

    @PostMapping("updateUser")
    public ResponseEntity<Common<Void>> updateUser(@RequestBody User user){
        return ResponseEntity.ok(userService.updateUser(user));
    }

    @PostMapping("test")
    public void test(){
        System.out.println(666);
        System.out.println(777);
    }

    /**
     * 查询用户
     * @return
     */
    @PostMapping("queryUser")
    public ResponseEntity<Common<List<User>>> queryUser(@RequestBody User user){
        return ResponseEntity.ok(userService.queryUser(user));
    }

    /**
     * 删除用户
     * @param user
     * @return
     */
    @PostMapping("deleteUser")
    public ResponseEntity<Common<Void>> deleteUser(@RequestBody User user){
        return ResponseEntity.ok(userService.deleteUser(user));
    }

}
