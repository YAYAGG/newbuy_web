package com.xoqao.web.service;


import com.xoqao.web.bean.User;
import com.xoqao.web.dao.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Author: lovegod
 * Created by 123 on 2017/2/20.
 */
@Service
public class UserServiceImpl implements UserService {
    @Autowired
    UserMapper userMapper;

    public void insertUser(User user) throws Exception {
     userMapper.insert(user);
    }

    public List<User> findUserList() throws Exception {
        List<User> userList = userMapper.selectByExample(null);
        return userList;
    }



    public User findUserByUid(Integer uid) throws Exception {
        User user = userMapper.selectByPrimaryKey(uid);
        return user;
    }

}
