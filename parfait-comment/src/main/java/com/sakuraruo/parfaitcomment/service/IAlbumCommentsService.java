package com.sakuraruo.parfaitcomment.service;

import java.util.List;

import com.sakuraruo.parfaitDAO.mongoEntity.AlbumComments;

public interface IAlbumCommentsService {
    List<AlbumComments> findAll();
    void saveAlbumComments(AlbumComments albumComments);
    List<AlbumComments> findALbumCommentsById(String albumId);
}
