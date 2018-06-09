package com.sakuraruo.parfaitDAO.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.sakuraruo.parfaitDAO.mapper.AccountMapper;
import com.sakuraruo.parfaitDAO.model.Account;

@Component
public class DAOAccount implements IDAOAccount{
    @Autowired
    AccountMapper accountMapper;

    @Override
    public Account findAccountByName(String accountName) throws Exception {
        return accountMapper.findAccountByName(accountName);
    }
    
    
}
