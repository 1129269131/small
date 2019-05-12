package com.leyou.admin.web;

import com.leyou.admin.pojo.Advertisement;
import com.leyou.admin.service.AdvertisementService;
import com.leyou.common.vo.Common;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("ad")
public class AdvertisementController {
    @Autowired
    private AdvertisementService advertisementService;

    @GetMapping("{classification}")
    public ResponseEntity<Common<List<Advertisement>>> queryAdvertisement(@PathVariable("classification") Integer classification){
            return ResponseEntity.ok(advertisementService.queryAdvertisement(classification));
    }
}
