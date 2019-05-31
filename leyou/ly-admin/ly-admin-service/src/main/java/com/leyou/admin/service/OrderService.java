package com.leyou.admin.service;

import com.leyou.admin.mapper.OrderDetailMapper;
import com.leyou.admin.mapper.OrderMapper;
import com.leyou.admin.pojo.Orders;
import com.leyou.admin.pojo.OrdersDetail;
import com.leyou.common.vo.Common;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import tk.mybatis.mapper.entity.Example;

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
        Orders queryOrders = new Orders();
        queryOrders.setUid(orders.getUid());
        if(orders.getOrderStatus()!=4){
            queryOrders.setOrderStatus(orders.getOrderStatus());
        }
        Common<List<Orders>> res = new Common<List<Orders>>();
        List<Orders> orderList = orderMapper.select(queryOrders);
        for (int i =0; i<orderList.size();i++){
            orderList.get(i).setStringTime(getNowDate(orderList.get(i).getCreateTime()));
            Example example = new Example(OrdersDetail.class);
            example.createCriteria().andEqualTo("orderId",orderList.get(i).getId());
            List<OrdersDetail> list = orderDetailMapper.selectByExample(example);
            orderList.get(i).setOrdersDetails(list);
            if(orderList.get(i).getOrderStatus()==0){
                orderList.get(i).setOrderInfo("待付款");
                orderList.get(i).setOrderBtnInfo("一键付款");
            }else if(orderList.get(i).getOrderStatus()==1){
                orderList.get(i).setOrderInfo("待发货");
                orderList.get(i).setOrderBtnInfo("提醒发货");
            }else if(orderList.get(i).getOrderStatus()==2){
                orderList.get(i).setOrderInfo("待收货");
                orderList.get(i).setOrderBtnInfo("确认收货");
            }else{
                orderList.get(i).setOrderInfo("待评价");
                orderList.get(i).setOrderBtnInfo("评价商品");
            }
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
