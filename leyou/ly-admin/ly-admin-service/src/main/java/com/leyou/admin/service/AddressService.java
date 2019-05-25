package com.leyou.admin.service;

import com.leyou.admin.mapper.AddressMapper;
import com.leyou.admin.pojo.Address;
import com.leyou.common.vo.Common;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

import java.util.List;

@Service
public class AddressService {

    @Autowired
    private AddressMapper addressMapper;

    public Common<List<Address>> queryAddress(Long uid){
        Common<List<Address>> res = new Common<List<Address>>();
        Address address = new Address();
        address.setUid(uid);
        List<Address> list = addressMapper.select(address);
        if(CollectionUtils.isEmpty(list)){
            System.out.println("报错");
        }
        res.setResult(list);
        res.setCode(0);
        res.setMsg("success");
        return res;
    }

}
