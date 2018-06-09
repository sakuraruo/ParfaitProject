package com.sakuraruo.parfaitweb.pagecontroller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.sakuraruo.parfaitDAO.model.User;
import com.sakuraruo.parfaituser.service.IUserService;

@RestController
public class UserController {
    @Autowired
    IUserService userService;
    
    @RequestMapping("/findUserById")
    public User findUserByUserId(String userId) throws  Exception {
        return userService.findUserByUserId(Long.valueOf(userId));
    }
    
    @RequestMapping("/getUserInfo")
    public HashMap<String, String> getUserInfo(HttpSession session){
        HashMap<String, String> hashMap = new HashMap<>();
        String userId=String.valueOf(session.getAttribute("userId"));
        String accountName=String.valueOf(session.getAttribute("accountName"));
        hashMap.put("userId", userId);
        hashMap.put("accountName",accountName);
        return hashMap;
    }
}
