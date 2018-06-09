package com.sakuraruo.parfaitsearch.service;

import java.util.List;

import com.sakuraruo.parfaitDAO.model.Album;
import com.sakuraruo.parfaitDAO.model.Singles;

public interface ISearchService {
    List<Album> searchAlbum(String albumName)throws Exception;
    List<Singles> searchSingle(String singlesName) throws Exception;
}
