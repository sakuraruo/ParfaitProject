package com.sakuraruo.parfaitweb.pagecontroller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.sakuraruo.parfaitcomment.service.IAlbumCommentsService;
import com.sakuraruo.parfaitDAO.model.Album;
import com.sakuraruo.parfaitDAO.mongoEntity.AlbumComments;
import com.sakuraruo.parfaitalbum.Service.IAlbumService;

@RestController
public class AlbumController {
    @Autowired
    IAlbumService albumService;

    @Autowired
    IAlbumCommentsService albumCommentsService;
    @RequestMapping("/albumInfo")
    public Album findAlbumById(@RequestParam(defaultValue="1") long albumId) throws Exception {
        return albumService.findAlbumById(albumId);

    }
    
    @RequestMapping("/albumComments")
    List<AlbumComments> findAll() {
        return albumCommentsService.findAll();
    }
    
    @RequestMapping("/savealbumComments")
    void  saveAlbumComments() {
        AlbumComments albumComments2 = new AlbumComments();;
        albumComments2.setComment_type("album");
        albumComments2.setComment_content("111111");
        albumCommentsService.saveAlbumComments(albumComments2);
        
        
    }
    
    @RequestMapping("/findComments")
    List<AlbumComments> findAlbumCommentsById(String albumId) {
        return albumCommentsService.findALbumCommentsById(albumId);
    }
    
}
