package com.leyou.item.vo;

import com.leyou.item.pojo.Goods;
import com.leyou.item.pojo.Packing;
import com.leyou.item.pojo.Taste;

import java.util.List;

public class GoodsDetailList {
    private Goods goods;
    private List<Taste> taste;
    private List<Packing> packing;

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

    public List<Packing> getPacking() {
        return packing;
    }

    public void setPacking(List<Packing> packing) {
        this.packing = packing;
    }
}
