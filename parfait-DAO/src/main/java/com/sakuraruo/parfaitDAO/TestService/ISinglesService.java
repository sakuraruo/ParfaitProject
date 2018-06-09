package com.sakuraruo.parfaitDAO.TestService;

import java.util.List;

import com.sakuraruo.parfaitDAO.model.Singles;

public interface ISinglesService {
    Singles findSingleById(long singlesId) throws Exception;
    List<Singles> findSingleByAlbumId(long albumId) throws Exception;
    
}
