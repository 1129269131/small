package com.leyou.admin.service;

import com.leyou.admin.mapper.CommentMapper;
import com.leyou.admin.mapper.UserMapper;
import com.leyou.admin.pojo.Comment;
import com.leyou.admin.pojo.Orders;
import com.leyou.admin.pojo.User;
import com.leyou.common.vo.Common;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Service
public class CommentService {

    @Autowired
    private CommentMapper commentMapper;

    @Autowired
    private UserMapper userMapper;

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
            for (int i =0; i<list.size();i++){
                User user = new User();
                user = userMapper.selectByPrimaryKey(list.get(i).getUid());
                String userName = user.getUsername();
                userName = userName.replaceFirst(userName.substring(1,userName.length()-1) ,"*");
                list.get(i).setUserName(userName);
                list.get(i).setStringTime(getNowDate(list.get(i).getCreateTime()));
            }
            res.setResult(list);
            res.setCode(0);
            res.setMsg("success");
        } catch (Exception e) {
//            logger.error(this.getClass().getName(),e);
        }
        return res;
    }

    public Common<Void> addComment(Comment comment) {
        Common<Void> res = new Common<Void>();
        if(comment.getCommentRate()<=2){
            comment.setCommentType(0);
        }else if(comment.getCommentRate()<=3){
            comment.setCommentType(1);
        }else{
            comment.setCommentType(2);
        }
        comment.setCreateTime(new Date());
        try {
            commentMapper.insertSelective(comment);
        } catch (Exception e) {
//            logger.error(this.getClass().getName(),e);
        }
        res.setCode(0);
        res.setMsg("success");
        return res;
    }

    /**
     * 转时间类型
     * @return
     */
    public String getNowDate(Date currentTime) {
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String dateString = formatter.format(currentTime);
        return dateString;
    }

}
