package com.leyou.service;

import com.leyou.common.vo.Common;
import com.leyou.item.pojo.Address;
import com.leyou.item.pojo.Goods;
import com.leyou.item.pojo.Taste;
import com.leyou.item.pojo.User;
import com.leyou.mapper.AddressMapper;
import com.leyou.mapper.GoodsMapper;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.util.List;

@Service
public class UserInfoService {

    @Autowired
    private AddressMapper addressMapper;

    /**
     * 用户新增地址
     * @param address
     * @return
     */
    public Common<Boolean> setAddress(Address address){
        Logger logger = Logger.getLogger(this.getClass());
        Common<Boolean> res = new Common<Boolean>();
        Boolean boo = null;
        try {
            boo = this.addressMapper.insertSelective(address) == 1;

            res.setResult(boo);
            res.setCode(0);
            res.setMsg("success");
        } catch (Exception e) {
            logger.error(this.getClass().getName(),e);
        }
        return res;
    }

    public Common<List<Address>> addressList(int userId){
        Logger logger = Logger.getLogger(this.getClass());
        Common<List<Address>> res = new Common<List<Address>>();
        try {

            Example example = new Example(Address.class);
            example.createCriteria().andEqualTo("userId",userId);
            List<Address> address = this.addressMapper.selectByExample(example);

            res.setResult(address);
            res.setCode(0);
            res.setMsg("success");
        } catch (Exception e) {
            logger.error(this.getClass().getName(),e);
        }
        return res;
    }
}
