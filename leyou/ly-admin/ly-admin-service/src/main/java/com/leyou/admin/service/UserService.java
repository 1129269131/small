package com.leyou.admin.service;

import com.leyou.admin.mapper.UserMapper;
import com.leyou.admin.pojo.User;
import com.leyou.common.vo.Common;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {
    @Autowired
    private UserMapper userMapper;

    public Common<Void> updateUser(User user){
        Common<Void> res = new Common<Void>();
        int result = this.userMapper.updateByPrimaryKeySelective(user);
        res.setCode(0);
        res.setMsg("success");
        return res;
    }
}
