package com.sakuraruo.parfaitDAO.dao;

import com.sakuraruo.parfaitDAO.model.Account;

public interface IDAOAccount {
    Account findAccountByName(String accountName)throws Exception;

}
