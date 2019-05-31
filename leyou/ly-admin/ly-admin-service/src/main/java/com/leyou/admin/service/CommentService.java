package com.leyou.admin.service;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.leyou.admin.mapper.CommentMapper;
import com.leyou.admin.mapper.UserMapper;
import com.leyou.admin.pojo.Comment;
import com.leyou.admin.pojo.User;
import com.leyou.common.vo.Common;
import com.leyou.common.vo.PageResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Service
public class CommentService {

    @Autowired
    private CommentMapper commentMapper;

    @Autowired
    private UserMapper userMapper;

    public PageResult<Comment> queryComment(Integer page, Integer pageSize,Long skuId, int commentType) {
        // 开始分页
        PageHelper.startPage(page, pageSize);
        Example example = new Example(Comment.class);
        if(commentType != 3){
            example.createCriteria().andEqualTo("commentType",commentType);
        }
        example.setOrderByClause("create_time DESC");
        List<Comment> list = null;
        // 查询
        Page<Comment> pageInfo = (Page<Comment>) commentMapper.selectByExample(example);
        list = pageInfo;
        for (int i =0; i<pageInfo.size();i++){
            User user = new User();
            user = userMapper.selectByPrimaryKey(list.get(i).getUid());
            String userName = user.getUsername();
            userName = userName.replaceFirst(userName.substring(1,userName.length()-1) ,"*");
            list.get(i).setUserName(userName);
            list.get(i).setStringTime(getNowDate(list.get(i).getCreateTime()));
        }
        return new PageResult<>(pageInfo.getTotal(), pageInfo,0,"success");
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
            System.out.println(e);
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
