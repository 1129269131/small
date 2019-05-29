package com.leyou.controller;

import com.leyou.common.vo.Common;
import com.leyou.item.pojo.Advertisement;
import com.leyou.service.AdvertisementService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;


@RestController
@RequestMapping("ad")
public class AdvertisementController {
    @Autowired
    private AdvertisementService advertisementService;

    /**
     * 广告查询
     * @param classification
     * @return
     */
    @GetMapping("{classification}")
    public ResponseEntity<Common<List<Advertisement>>> queryAdvertisement(@PathVariable("classification") Integer classification){
        return ResponseEntity.ok(advertisementService.queryAdvertisement(classification));
    }
}
