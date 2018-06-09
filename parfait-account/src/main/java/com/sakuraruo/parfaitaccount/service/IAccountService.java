package com.sakuraruo.parfaitaccount.service;

import com.sakuraruo.parfaitDAO.model.Account;

public interface IAccountService {
    Account findAccountByName(String accountName)throws Exception;
}
