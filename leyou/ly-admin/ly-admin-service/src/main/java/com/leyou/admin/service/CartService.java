package com.leyou.admin.service;

import com.leyou.admin.pojo.Cart;
import com.leyou.auth.entity.UserInfo;
import com.leyou.utils.JsonUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.BoundHashOperations;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class CartService {

    @Autowired
    private StringRedisTemplate redisTemplate;

    private static final String KEY_PREFIX = "cart:uid:";
    public void addCart(Cart cart,HttpServletRequest request){
        // 获取登录用户
        UserInfo user = (UserInfo) request.getAttribute("user");
        //key
        String key = KEY_PREFIX + user.getId();
        // hashKey
        String hashKey = cart.getSkuId().toString();

        BoundHashOperations<String,Object,Object> operation = redisTemplate.boundHashOps(key);
        //判断当前购物车商品是否存在
        if(operation.hasKey(hashKey)){
            //存在，修改数量
            String json = operation.get(hashKey).toString();
            Cart cacheCart= JsonUtils.parse(json,Cart.class);
            cacheCart.setNum(cacheCart.getNum() + cart.getNum());
            //写回redis
            operation.put(cart.getSkuId().toString(),JsonUtils.serialize(cacheCart));
        }else{
            // 否，新增
            operation.put(cart.getSkuId().toString(),JsonUtils.serialize(cart));
        }
    }

    /**
     * 查询购物车
     * @param request
     * @return
     */
    public List<Cart> queryCartList(HttpServletRequest request){
        // 获取登录用户
        UserInfo user = (UserInfo) request.getAttribute("user");
        //key
        String key = KEY_PREFIX + user.getId();

        if(!redisTemplate.hasKey(key)){
            // key不存在
            return  null;
        }

        //获取登录用户的所有购物车
        BoundHashOperations<String, Object, Object> operation = redisTemplate.boundHashOps(key);

        List<Object> carts = operation.values();
        return carts.stream().map( o -> JsonUtils.parse(o.toString(),Cart.class)).collect(Collectors.toList());
    }
}
