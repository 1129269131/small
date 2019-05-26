package com.leyou.admin.service;

import com.leyou.admin.mapper.OrderDetailMapper;
import com.leyou.admin.mapper.OrderMapper;
import com.leyou.admin.pojo.Orders;
import com.leyou.admin.pojo.OrdersDetail;
import com.leyou.common.vo.Common;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;

@Service
public class OrderDetailService {

    @Autowired
    private OrderDetailMapper orderDetailMapper;

    @Transactional
    public int addOrderDetail(OrdersDetail ordersDetail){
        int res = this.orderDetailMapper.insertSelective(ordersDetail);
        return res;
    }
}
