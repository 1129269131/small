package com.leyou.admin.service;

import com.leyou.admin.mapper.OrderDetailMapper;
import com.leyou.admin.mapper.OrderMapper;
import com.leyou.admin.pojo.Orders;
import com.leyou.admin.pojo.OrdersDetail;
import com.leyou.admin.pojo.User;
import com.leyou.common.vo.Common;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Service
public class OrderService {

    @Autowired
    private OrderMapper orderMapper;

    @Autowired
    private OrderDetailMapper orderDetailMapper;

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

    public Common<List<Orders>> queryOrder(Orders orders){
        Common<List<Orders>> res = new Common<List<Orders>>();
        List<Orders> orderList = orderMapper.select(orders);
        for (int i =0; i<orderList.size();i++){
            OrdersDetail ordersDetail = new OrdersDetail();
            ordersDetail.setOrderId(orderList.get(i).getId());
            orderList.get(i).setStringTime(getNowDate(orderList.get(i).getCreateTime()));
            List<OrdersDetail> list = orderDetailMapper.select(ordersDetail);
            orderList.get(i).setOrdersDetails(orderDetailMapper.select(ordersDetail));
        }
        res.setResult(orderList);
        res.setCode(0);
        res.setMsg("success");
        return res;
    }

    /**
     * 转时间类型
     * @return
     */
    public String getNowDate(Date currentTime) {
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String dateString = formatter.format(currentTime);
        return dateString;
    }
}
