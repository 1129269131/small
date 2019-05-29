package com.leyou.service;

import com.leyou.common.vo.Common;
import com.leyou.item.pojo.Advertisement;
import com.leyou.mapper.AdvertisementMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

import java.util.List;


@Service
public class AdvertisementService {

    @Autowired
    private AdvertisementMapper advertisementMapper;

    public Common<List<Advertisement>> queryAdvertisement(Integer classification){
        Common<List<Advertisement>> res = new Common<List<Advertisement>>();
        Advertisement advertisement = new Advertisement();
        advertisement.setClassification(classification);
        List<Advertisement> list = advertisementMapper.select(advertisement);
        if(CollectionUtils.isEmpty(list)){
            System.out.println("报错");
        }
        res.setResult(list);
        res.setCode(0);
        res.setMsg("success");
        return res;
    }

}
