package com.leyou.admin.web;

import com.leyou.admin.pojo.Orders;
import com.leyou.admin.service.OrderService;
import com.leyou.common.vo.Common;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("order")
public class OrderController {

    @Autowired
    private OrderService orderService;

    /**
     * 添加订单
     * @param orders
     */
    @PostMapping("addOrder")
    public ResponseEntity<Common<Void>> addOrder(@RequestBody Orders orders){
        return ResponseEntity.ok(orderService.addOrder(orders));
    }

    /**
     * 用户订单查询
     * @param orders
     * @return
     */
    @PostMapping("queryOrder")
    public ResponseEntity<Common<List<Orders>>> queryOrder(@RequestBody Orders orders){
        return ResponseEntity.ok(orderService.queryOrder(orders));
    }

}
