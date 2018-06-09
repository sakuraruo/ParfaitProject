package com.sakuraruo.parfaitDAO.dao;

import com.sakuraruo.parfaitDAO.model.User;

public interface IDAOUser {
    User findUserByUserId( long userId)throws Exception;
}
