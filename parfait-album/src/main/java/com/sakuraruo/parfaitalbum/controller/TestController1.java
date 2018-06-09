package com.sakuraruo.parfaitalbum.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.sakuraruo.parfaitDAO.model.Album;
import com.sakuraruo.parfaitalbum.Service.IAlbumService;

@RestController
public class TestController1 {
    @Autowired
    IAlbumService memberService;
    
    @RequestMapping("/test/{albumId}")
    Album findMemberByMemberId(@PathVariable("albumId") long albumId) throws Exception{
       return memberService.findAlbumById(albumId);
    }
}
