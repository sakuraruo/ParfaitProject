package com.sakuraruo.parfaitDAO.mapper;

import org.apache.ibatis.annotations.Param;

import com.sakuraruo.parfaitDAO.model.User;

public interface UserMapper {
    User findUserByUserId(@Param("user_id") long userId)throws Exception;
}
