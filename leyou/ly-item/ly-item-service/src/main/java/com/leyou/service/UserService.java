package com.leyou.service;

import com.leyou.common.vo.Common;
import com.leyou.item.pojo.Brand;
import com.leyou.item.pojo.User;
import com.leyou.mapper.UserMapper;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;


@Service
public class UserService {

    @Autowired
    private UserMapper userMapper;

    /**
     * 注册
     * @param user
     * @return
     */
    public Common<Boolean> regist(User user){
        Logger logger = Logger.getLogger(this.getClass());
        Common<Boolean> res = new Common<Boolean>();
        Boolean boo = null;
        try {
            Example example = new Example(User.class);
            // 写入数据库
            boo = this.userMapper.insertSelective(user) == 1;

            res.setResult(boo);
            res.setCode(0);
            res.setMsg("success");
        } catch (Exception e) {
            logger.error(this.getClass().getName(),e);
        }
        return res;
    }

    public Common<Boolean> login(User user){
        Logger logger = Logger.getLogger(this.getClass());
        Common<Boolean> res = new Common<Boolean>();
        Boolean boo = null;
        try {
            Example example = new Example(User.class);
            // 写入数据库
            User getUser = this.userMapper.selectOne(user);
            //判断用户是否存在
            if(getUser == null){
                boo = false;
            }else{
                boo = true;
            }

            res.setResult(boo);
            res.setCode(0);
            res.setMsg("success");
        } catch (Exception e) {
            logger.error(this.getClass().getName(),e);
        }
        return res;
    }
}
