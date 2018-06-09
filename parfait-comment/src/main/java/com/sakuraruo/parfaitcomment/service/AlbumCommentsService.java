package com.sakuraruo.parfaitcomment.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sakuraruo.parfaitDAO.mongoDAO.AlbumCommentsDAO;
import com.sakuraruo.parfaitDAO.mongoEntity.AlbumComments;
@Service
public class AlbumCommentsService implements IAlbumCommentsService{
    
    @Autowired
    AlbumCommentsDAO albumCommentsDAO;
    @Override
    public List<AlbumComments> findAll() {
        return albumCommentsDAO.findAll();
    }
    @Override
    public void saveAlbumComments(AlbumComments albumComments) {
        albumCommentsDAO.saveAlbumComments(albumComments);
    }
    @Override
    public List<AlbumComments> findALbumCommentsById(String albumId) {
        return albumCommentsDAO.findALbumCommentsById(albumId);
    }
    
}
