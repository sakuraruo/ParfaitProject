package com.sakuraruo.parfaitDAO.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.sakuraruo.parfaitDAO.mapper.UserMapper;
import com.sakuraruo.parfaitDAO.model.User;
@Component
public class DAOUser implements IDAOUser{
    @Autowired
    UserMapper userMapper;
    @Override
    public User findUserByUserId(long userId) throws Exception {
       return userMapper.findUserByUserId(userId);
    }
    
}
