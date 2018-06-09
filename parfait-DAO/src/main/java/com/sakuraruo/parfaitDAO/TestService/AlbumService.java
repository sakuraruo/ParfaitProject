package com.sakuraruo.parfaitDAO.TestService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sakuraruo.parfaitDAO.dao.DAOAlbum;
import com.sakuraruo.parfaitDAO.model.Album;
@Service
public class AlbumService implements IAlbumService{
    
    @Autowired
    DAOAlbum daoAlbum;
    @Override
    public Album findAlbumById(long albumId) throws Exception {
        
        return daoAlbum.findAlbumById(albumId);
    }
    
}
