package com.sakuraruo.parfaituser.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sakuraruo.parfaitDAO.dao.IDAOUser;
import com.sakuraruo.parfaitDAO.model.User;
@Service
public class UserService implements IUserService{
    
    @Autowired
    IDAOUser daoUser;
    
    @Override
    public User findUserByUserId(long userId) throws Exception {
        return daoUser.findUserByUserId(userId);
    }
    
}
