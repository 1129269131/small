package com.leyou.admin.service;

import com.leyou.admin.mapper.OrderMapper;
import com.leyou.admin.pojo.Orders;
import com.leyou.admin.pojo.OrdersDetail;
import com.leyou.common.vo.Common;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;

@Service
public class OrderService {

    @Autowired
    private OrderMapper orderMapper;

    @Autowired
    private OrderDetailService orderDetailService;

    @Transactional
    public Common<Void> addOrder(Orders orders){
        Common<Void> res = new Common<Void>();
        orders.setOrderStatus(1);
        orders.setCreateTime(new Date());
        orderMapper.insertSelective(orders);
        List<OrdersDetail> ordersDetails = orders.getOrdersDetails();
        for(int i=0;i<ordersDetails.size();i++){
            ordersDetails.get(i).setOrderId(orders.getId());
            orderDetailService.addOrderDetail(ordersDetails.get(i));
        }
        res.setCode(0);
        res.setMsg("success");
        return res;
    }
}
