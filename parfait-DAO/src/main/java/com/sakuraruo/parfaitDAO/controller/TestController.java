package com.sakuraruo.parfaitDAO.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.sakuraruo.parfaitDAO.TestService.IAlbumService;
import com.sakuraruo.parfaitDAO.TestService.ISinglesService;
import com.sakuraruo.parfaitDAO.model.Album;
import com.sakuraruo.parfaitDAO.model.Singles;
@RestController
public class TestController {
    /*@Autowired
    IMemberService memberService;*/
    @Autowired
    IAlbumService albumService;
    
    @Autowired
    ISinglesService singlesService;

    /*@RequestMapping("/member/{memberId}")
    Member findMemberByMemberId(@PathVariable("memberId") Integer memberId) throws Exception{
       return memberService.findMemberByMemberId(memberId);
    }*/
    
    @RequestMapping("/album/{albumId}")
    Album findAlbumById(@PathVariable("albumId") Long albumId) throws Exception{
        return albumService.findAlbumById(albumId);
    }
    
    @RequestMapping("/singles/{singlesId}")
    Singles findSinglesById(@PathVariable("singlesId") Long singlesId) throws Exception{
        return singlesService.findSingleById(singlesId);
    }
    
    
    
    
}
