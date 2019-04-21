package com.leyou.item.vo;

import com.leyou.item.pojo.Goods;
import com.leyou.item.pojo.Taste;

import java.util.List;

public class GoodsDetailList {
    private Goods goods;
    private List<Taste> taste;

    public Goods getGoods() {
        return goods;
    }

    public void setGoods(Goods goods) {
        this.goods = goods;
    }

    public List<Taste> getTaste() {
        return taste;
    }

    public void setTaste(List<Taste> taste) {
        this.taste = taste;
    }
}
