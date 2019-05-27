package com.leyou.admin.web;

import com.leyou.admin.pojo.Sku;
import com.leyou.admin.pojo.Spu;
import com.leyou.admin.pojo.User;
import com.leyou.admin.service.GoodsService;
import com.leyou.common.vo.Common;
import com.leyou.common.vo.PageResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
public class GoodsController {

    @Autowired
    private GoodsService goodsService;

    @GetMapping("/spu/page")
    public ResponseEntity<PageResult<Spu>> querySpuByPage(
            @RequestParam(value = "page", defaultValue = "1") Integer page,
            @RequestParam(value = "rows", defaultValue = "5") Integer rows,
            @RequestParam(value = "saleable", required = false) Boolean saleable,
            @RequestParam(value = "desc", defaultValue = "false") Boolean desc,
            @RequestParam(value = "key", required = false) String key
    ){
        return ResponseEntity.ok(goodsService.querySpuByPage(page,rows,saleable,key));
    }

    /**
     * 根据id查询spu
     * @param id
     * @return
     */
    @GetMapping("spu/{id}")
    public ResponseEntity<Common<Spu>> querySpuById(@PathVariable("id") Long id){
        return ResponseEntity.ok(goodsService.querySpuById(id));
    }

    /**
     * 查询Sku
     * @return
     */
    @PostMapping("querySku")
    public ResponseEntity<Common<List<Sku>>> querySku(@RequestBody Sku sku){
        return ResponseEntity.ok(goodsService.querySku(sku));
    }

}
