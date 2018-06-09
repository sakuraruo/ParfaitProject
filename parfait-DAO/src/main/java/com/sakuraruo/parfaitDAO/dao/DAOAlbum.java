package com.sakuraruo.parfaitDAO.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.sakuraruo.parfaitDAO.mapper.AlbumMapper;
import com.sakuraruo.parfaitDAO.model.Album;
@Component
public class DAOAlbum implements IDAOAlbum{
    
    @Autowired
    AlbumMapper albumMapper;
    @Override
    public Album findAlbumById(long albumId) throws Exception {
        return albumMapper.findAlbumById(albumId);
    }
    @Override
    public List<Album> searchAlbum(String albumName) throws Exception {
        return albumMapper.searchAlbum(albumName);
    }
    
}
