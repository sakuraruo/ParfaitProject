package com.sakuraruo.parfaitalbum.Service;

import java.util.List;

import com.sakuraruo.parfaitDAO.model.Album;
import com.sakuraruo.parfaitDAO.model.Singles;

public interface IAlbumService {
    Album findAlbumById(long albumId) throws Exception;
    List<Singles> findSinglesByAlbumId(long aLbumId) throws Exception;
}
