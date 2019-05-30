package com.leyou.service;

import com.leyou.common.vo.Common;
import com.leyou.item.pojo.Brand;
import com.leyou.item.pojo.User;
import com.leyou.mapper.UserMapper;
//import org.apache.log4j.Logger;
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
        Common<Boolean> res = new Common<Boolean>();
        Boolean boo = null;
        try {
            // 写入数据库
            boo = this.userMapper.insertSelective(user) == 1;

            res.setResult(boo);
            res.setCode(0);
            res.setMsg("success");
        } catch (Exception e) {
            System.out.println(e);
        }
        return res;
    }

    /**
     * 登录
     * @param user
     * @return
     */
    public Common<Boolean> login(User user){
        Common<Boolean> res = new Common<Boolean>();
        Boolean boo = null;
        try {
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
            System.out.println(e);
        }
        return res;
    }

    /**
     * 查询用户是否存在
     * @param username
     * @param password
     * @return
     */
    public User queryUser(String username, String password) {
        // 查询
        User user = new User();
        user.setUsername(username);
        user.setPassword(password);
        User resUser = this.userMapper.selectOne(user);
        // 校验用户名
        if (resUser == null) {
            return null;
        }
        // 用户名密码都正确
        return resUser;
    }
}
