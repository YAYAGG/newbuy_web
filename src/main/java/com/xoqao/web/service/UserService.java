package com.xoqao.web.service;



import com.xoqao.web.bean.User;

import java.util.List;

/**
 * Author: lovegod
 * Created by 123 on 2017/2/20.
 */
public interface UserService {
    /**
     * 添加用户
     * @param user
     * @throws Exception
     */
    public void insertUser(User user)throws Exception;

    /**
     * 查找所有用户
     * @return
     * @throws Exception
     */
    public List<User> findUserList()throws Exception;

    /**
     * 根据用户id查询用户
     * @param uid 用户id
     * @return
     * @throws Exception
     */
    public User findUserByUid(Integer uid)throws Exception;
}
