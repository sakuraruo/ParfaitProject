package com.sakuraruo.parfaitsearch.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sakuraruo.parfaitDAO.dao.IDAOAlbum;
import com.sakuraruo.parfaitDAO.dao.IDAOSingles;
import com.sakuraruo.parfaitDAO.model.Album;
import com.sakuraruo.parfaitDAO.model.Singles;
@Service
public class SearchService implements ISearchService{
    @Autowired
    IDAOAlbum daoAlbum;
    
    @Autowired
    IDAOSingles daoSingles;
    @Override
    public List<Album> searchAlbum(String albumName) throws Exception {
        return daoAlbum.searchAlbum(albumName);
    }

    @Override
    public List<Singles> searchSingle(String singlesName) throws Exception {
        return daoSingles.searchSingle(singlesName);
    }
    
}
