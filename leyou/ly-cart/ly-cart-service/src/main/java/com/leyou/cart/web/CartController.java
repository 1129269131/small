package com.leyou.cart.web;

import com.leyou.admin.pojo.Cart;
import com.leyou.cart.service.CartService;
import com.leyou.common.vo.Common;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

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

    /***
     * 查看购物车
     * @param request
     * @return
     */
    @PostMapping("queryCartList")
    public ResponseEntity<Common<List<Cart>>> queryCartList(HttpServletRequest request){
        Common<List<Cart>> res = new Common<List<Cart>>();
        List<Cart> cart = cartService.queryCartList(request);
        res.setResult(cart);
        res.setCode(0);
        res.setMsg("success");
        return ResponseEntity.ok(res);
    }

}
