package com.sakuraruo.parfaitalbum.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sakuraruo.parfaitDAO.dao.IDAOAlbum;
import com.sakuraruo.parfaitDAO.model.Album;
import com.sakuraruo.parfaitDAO.model.Singles;
@Service
public class AlbumService1 implements IAlbumService{
    @Autowired
    IDAOAlbum daoAlbum;
    @Override
    public Album findAlbumById(long albumId) throws Exception {
        return daoAlbum.findAlbumById(albumId);
    }
    @Override
    public List<Singles> findSinglesByAlbumId(long aLbumId) throws Exception {
        // TODO Auto-generated method stub
        return null;
    }
    
   
}
