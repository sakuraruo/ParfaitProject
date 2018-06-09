package com.sakuraruo.parfaitDAO.mapper;

import org.apache.ibatis.annotations.Param;

import com.sakuraruo.parfaitDAO.model.Account;

public interface AccountMapper {
    Account findAccountByName(@Param("account_name")String accountName)throws Exception;
}
