package com.leyou.admin.web;

import com.leyou.admin.pojo.Address;
import com.leyou.admin.service.AddressService;
import com.leyou.common.vo.Common;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("address")
public class AddressController {

    @Autowired
    private AddressService addressService;

    /**
     * 查询用户地址信息
     * @param uid
     * @return
     */
    @PostMapping("queryAddress")
    public ResponseEntity<Common<List<Address>>> queryAddress(@RequestParam("uid") Long uid){
        return ResponseEntity.ok(addressService.queryAddress(uid));
    }

}
