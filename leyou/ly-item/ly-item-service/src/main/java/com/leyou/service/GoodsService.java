package com.leyou.service;

import com.leyou.common.vo.Common;
import com.leyou.item.pojo.*;
import com.leyou.item.vo.GoodsDetailList;
import com.leyou.mapper.CommentMapper;
import com.leyou.mapper.GoodsMapper;
import com.leyou.mapper.PackingMapper;
import com.leyou.mapper.TasteMapper;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.util.List;

@Service
public class GoodsService {

    @Autowired
    private GoodsMapper goodsMapper;

    @Autowired
    private TasteMapper tasteMapper;

    @Autowired
    private PackingMapper packingMapper;

    @Autowired
    private CommentMapper commentMapper;
    /**
     * 获取商品列表
     * @return
     */
    public Common<List<Goods>> goodsList(){
        Logger logger = Logger.getLogger(this.getClass());
        Common<List<Goods>> res = new Common<List<Goods>>();
        try {
            List<Goods> goods = this.goodsMapper.selectAll();

            res.setResult(goods);
            res.setCode(0);
            res.setMsg("success");
        } catch (Exception e) {
            logger.error(this.getClass().getName(),e);
        }
        return res;
    }

    /**
     * 获取商品详情列表
     * @param goodsId
     * @return
     */
    public Common<GoodsDetailList> goodsDetailList(int goodsId){
        Logger logger = Logger.getLogger(this.getClass());
        Common<GoodsDetailList> res = new Common<GoodsDetailList>();
        GoodsDetailList goodsDetailList = new GoodsDetailList();
        try {
            Goods goods = this.goodsMapper.selectByPrimaryKey(goodsId);
            goodsDetailList.setGoods(goods);

            Example example = new Example(Taste.class);
            example.createCriteria().andEqualTo("goodId",goodsId);
            List<Taste> tastes = this.tasteMapper.selectByExample(example);
            goodsDetailList.setTaste(tastes);

            example = new Example(Packing.class);
            example.createCriteria().andEqualTo("goodId",goodsId);
            List<Packing> packings = this.packingMapper.selectByExample(example);
            goodsDetailList.setPacking(packings);

            example = new Example(Comment.class);
            example.createCriteria().andEqualTo("goodId",goodsId);
            List<Comment> comments = this.commentMapper.selectByExample(example);
            goodsDetailList.setComments(comments);

            res.setResult(goodsDetailList);
            res.setCode(0);
            res.setMsg("success");
        } catch (Exception e) {
            logger.error(this.getClass().getName(),e);
        }
        return res;
    }
}
