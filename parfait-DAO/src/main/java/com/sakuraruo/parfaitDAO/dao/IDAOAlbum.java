package com.sakuraruo.parfaitDAO.dao;

import java.util.List;

import com.sakuraruo.parfaitDAO.model.Album;

public interface IDAOAlbum {
    Album findAlbumById(long albumId) throws Exception;
    List<Album> searchAlbum(String albumName)throws Exception;
}
