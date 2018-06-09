package com.sakuraruo.parfaitaccount.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sakuraruo.parfaitDAO.dao.IDAOAccount;
import com.sakuraruo.parfaitDAO.model.Account;

@Service
public class AccountService implements IAccountService{
    @Autowired
    IDAOAccount daoAccount;
    public Account findAccountByName(String accountName)throws Exception{
        return daoAccount.findAccountByName(accountName);
    }
}
