package com.leyou.item.vo;

import com.leyou.item.pojo.Comment;
import com.leyou.item.pojo.Goods;
import com.leyou.item.pojo.Packing;
import com.leyou.item.pojo.Taste;

import java.util.List;

public class GoodsDetailList {
    private Goods goods;
    private List<Taste> taste;
    private List<Packing> packing;
    private List<Comment> comments;

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

    public List<Comment> getComments() {
        return comments;
    }

    public void setComments(List<Comment> comments) {
        this.comments = comments;
    }
}
