package com.sakuraruo.parfaitweb.pagecontroller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.sakuraruo.parfaitDAO.model.Account;
import com.sakuraruo.parfaitaccount.service.IAccountService;

@RestController
public class AccountController {
    @Autowired
    IAccountService accountService;
    
    @RequestMapping("/login")
    public HashMap<String, String> login(String accountName,String password,HttpSession session) throws Exception {
        HashMap<String , String> hashMap = new  HashMap<>();
        Account account = accountService.findAccountByName(accountName);
        if(account==null) {
            hashMap.put("result", "用户不存在");
            return hashMap;
        }
        else {
            if(account.getPassword().equals(password)) {
                session.setAttribute("userId", account.getUserId());
                session.setAttribute("accountName", account.getAccountName());
                hashMap.put("result", "登陆成功");
                return hashMap;
            }
            else {
                hashMap.put("result", "密码错误");
                return hashMap;
            }
        }
    }
}
