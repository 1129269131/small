package com.leyou.admin.service;

import com.leyou.admin.mapper.OrderMapper;
import com.leyou.admin.pojo.Orders;
import com.leyou.common.vo.Common;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OrderService {

    @Autowired
    private OrderMapper orderMapper;

    public Common<Void> addOrder(Orders orders){
        Common<Void> res = new Common<Void>();
        Orders newOrder = new Orders();
        newOrder.setActualPay(orders.getActualPay());
        orderMapper.insert(newOrder);
        res.setCode(0);
        res.setMsg("success");
        return res;
    }
}
