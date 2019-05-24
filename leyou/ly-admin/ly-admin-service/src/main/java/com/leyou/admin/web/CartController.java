package com.leyou.admin.web;

import com.leyou.admin.pojo.Cart;
import com.leyou.admin.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;

@RestController
@RequestMapping("cart")
public class CartController {

    @Autowired
    private CartService cartService;

    /**
     * 新增购物车
     * @param cart
     * @return
     */
    @PostMapping("addCart")
    public ResponseEntity<Void> addCart(@RequestBody Cart cart,HttpServletRequest request){
        cartService.addCart(cart,request);
        return ResponseEntity.status(HttpStatus.CREATED).build();
    }

}
