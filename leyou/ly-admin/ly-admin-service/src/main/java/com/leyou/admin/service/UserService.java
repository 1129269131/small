package com.leyou.admin.service;

import com.leyou.admin.mapper.UserMapper;
import com.leyou.admin.pojo.User;
import com.leyou.common.vo.Common;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

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

    public Common<List<User>> queryUser(User user){
        Common<List<User>> res = new Common<List<User>>();
        // 过滤
        String userName = user.getUsername();
        Example example = new Example(User.class);
        if (StringUtils.isNotBlank(userName)) {
            example.createCriteria().andLike("username", "%" + userName + "%");
        }
        List<User> list = userMapper.selectByExample(example);
        for (int i =0; i<list.size();i++){
            if (list.get(i).getSex()==0){
                list.get(i).setStringSex("女");
            }else if(list.get(i).getSex()==1){
                list.get(i).setStringSex("男");
            }else{
                list.get(i).setStringSex("未知");
            }
            list.get(i).setStringTime(getNowDate(list.get(i).getCreatetime()));
        }
        res.setResult(list);
        res.setCode(0);
        res.setMsg("success");
        return res;
    }

    public Common<Void> deleteUser(User user){
        Common<Void> res = new Common<Void>();
        int result = this.userMapper.delete(user);
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
