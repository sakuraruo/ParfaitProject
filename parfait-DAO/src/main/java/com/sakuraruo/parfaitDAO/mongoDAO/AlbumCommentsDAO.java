package com.sakuraruo.parfaitDAO.mongoDAO;

import java.util.List;

import com.sakuraruo.parfaitDAO.mongoEntity.AlbumComments;

public interface AlbumCommentsDAO {
    List<AlbumComments> findAll();
    
    void saveAlbumComments(AlbumComments albumComments);
    
    void updateAlbumComments(AlbumComments albumComments);
    
    List<AlbumComments> findALbumCommentsById(String albumId);
    
}
