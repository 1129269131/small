package com.leyou.controller;

import com.leyou.common.vo.Common;
import com.leyou.item.pojo.Address;
import com.leyou.item.pojo.User;
import com.leyou.service.UserInfoService;
import com.leyou.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("userInfo")
public class UserInfoController {

    @Autowired
    private UserInfoService userInfoService;

    @PostMapping("setAddress")
    public ResponseEntity<Common<Boolean>> setAddress(@RequestBody Address address) {
        Common<Boolean> res = this.userInfoService.setAddress(address);
        return ResponseEntity.ok(res);
    }

    @PostMapping("addressList")
    public ResponseEntity<Common<List<Address>>> addressList(@RequestParam(value = "userId", required = true) int userId) {
        Common<List<Address>> res = this.userInfoService.addressList(userId);
        return ResponseEntity.ok(res);
    }
}
