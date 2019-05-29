package com.leyou.admin.web;

import com.leyou.admin.pojo.Orders;
import com.leyou.admin.pojo.OrdersDetail;
import com.leyou.admin.pojo.User;
import com.leyou.admin.service.OrderDetailService;
import com.leyou.common.vo.Common;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("orderDetail")
public class OrderDetailController {

    @Autowired
    private OrderDetailService orderDetailService;

    /**
     * 查询所有的订单详情
     * @return
     */
    @PostMapping("queryOrderDetail")
    public ResponseEntity<Common<List<OrdersDetail>>> queryOrderDetail(@RequestBody OrdersDetail ordersDetail){
        return ResponseEntity.ok(orderDetailService.queryOrderDetail(ordersDetail));
    }

    @PostMapping("deleteOrdersDetail")
    public ResponseEntity<Common<Void>> deleteOrdersDetail(@RequestBody OrdersDetail ordersDetail){
        return ResponseEntity.ok(orderDetailService.deleteOrdersDetail(ordersDetail));
    }

}
