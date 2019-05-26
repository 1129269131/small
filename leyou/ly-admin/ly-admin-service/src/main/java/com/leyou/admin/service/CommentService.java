package com.leyou.admin.service;

import com.leyou.admin.mapper.CommentMapper;
import com.leyou.admin.pojo.Comment;
import com.leyou.common.vo.Common;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CommentService {

    @Autowired
    private CommentMapper commentMapper;

    public Common<List<Comment>> queryComment(Long skuId,int commentType) {
        Comment comment = new Comment();
        if(commentType != 3){
            comment.setCommentType(commentType);
        }
        comment.setSkuId(skuId);
        Common<List<Comment>> res = new Common<List<Comment>>();
        List<Comment> list = null;
        try {
            list = this.commentMapper.select(comment);
            res.setResult(list);
            res.setCode(0);
            res.setMsg("success");
        } catch (Exception e) {
//            logger.error(this.getClass().getName(),e);
        }
        return res;
    }

}
