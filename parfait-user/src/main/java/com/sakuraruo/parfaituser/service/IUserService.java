package com.sakuraruo.parfaituser.service;

import com.sakuraruo.parfaitDAO.model.User;

public interface IUserService {
    User findUserByUserId(long userId)throws Exception;
}
