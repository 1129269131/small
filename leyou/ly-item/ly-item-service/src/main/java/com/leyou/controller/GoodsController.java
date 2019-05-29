package com.leyou.controller;

import com.leyou.common.vo.Common;
import com.leyou.item.pojo.Goods;
import com.leyou.item.pojo.User;
import com.leyou.item.vo.GoodsDetailList;
import com.leyou.mapper.TasteMapper;
import com.leyou.service.GoodsService;
import com.leyou.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("goods")
public class GoodsController {

    @Autowired
    private GoodsService goodsService;

    @PostMapping("goodsList")
    public ResponseEntity<Common<List<Goods>>> goodsList() {
        Common<List<Goods>> res = this.goodsService.goodsList();
        return ResponseEntity.ok(res);
    }

    @PostMapping("goodsDetailList")
    public ResponseEntity<Common<GoodsDetailList>> goodsDetailList(@RequestParam(value = "goodsId", required = true) int goodsId) {
        Common<GoodsDetailList> res = this.goodsService.goodsDetailList(goodsId);
        return ResponseEntity.ok(res);
    }

}
