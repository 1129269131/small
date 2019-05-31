package com.leyou.admin.service;

import com.leyou.admin.mapper.OrderDetailMapper;
import com.leyou.admin.pojo.OrdersDetail;
import com.leyou.admin.pojo.User;
import com.leyou.common.vo.Common;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import tk.mybatis.mapper.entity.Example;

import java.util.List;

@Service
public class OrderDetailService {

    @Autowired
    private OrderDetailMapper orderDetailMapper;

    @Transactional
    public int addOrderDetail(OrdersDetail ordersDetail){
        int res = this.orderDetailMapper.insertSelective(ordersDetail);
        return res;
    }

    public Common<List<OrdersDetail>> queryOrderDetail(OrdersDetail ordersDetail){
        Common<List<OrdersDetail>> res = new Common<List<OrdersDetail>>();
        // 过滤
        Long orderId = ordersDetail.getOrderId();
        Example example = new Example(User.class);
        if (orderId!=null) {
            example.createCriteria().andLike("orderId", "%" + orderId + "%");
        }
        List<OrdersDetail> list = orderDetailMapper.selectByExample(example);
        res.setResult(list);
        res.setCode(0);
        res.setMsg("success");
        return res;
    }

    public Common<Void> deleteOrdersDetail(OrdersDetail ordersDetail){
        Common<Void> res = new Common<Void>();
        int result = this.orderDetailMapper.delete(ordersDetail);
        res.setCode(0);
        res.setMsg("success");
        return res;
    }
}
