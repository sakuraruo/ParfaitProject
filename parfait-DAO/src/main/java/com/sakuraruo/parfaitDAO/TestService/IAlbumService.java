package com.sakuraruo.parfaitDAO.TestService;

import com.sakuraruo.parfaitDAO.model.Album;

public interface IAlbumService {
    Album findAlbumById(long albumId) throws Exception;
    
}
