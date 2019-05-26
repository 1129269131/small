package com.leyou.admin.service;

import com.leyou.admin.mapper.OrderMapper;
import com.leyou.admin.pojo.Orders;
import com.leyou.common.vo.Common;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;

@Service
public class OrderService {

    @Autowired
    private OrderMapper orderMapper;

    @Transactional
    public Common<Void> addOrder(Orders orders){
        Common<Void> res = new Common<Void>();
        orders.setOrderStatus(1);
        orders.setCreateTime(new Date());
        this.orderMapper.insertSelective(orders);
        res.setCode(0);
        res.setMsg("success");
        return res;
    }
}
