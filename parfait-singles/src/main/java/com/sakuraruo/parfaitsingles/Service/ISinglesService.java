package com.sakuraruo.parfaitsingles.Service;

import java.util.List;

import com.sakuraruo.parfaitDAO.model.Singles;

public interface ISinglesService {
    Singles findSinglesById(long singleId) throws Exception;
    List<Singles> findSingleByAlbumId(long albumId) throws Exception;
    Singles findSingleBySingleId( long singlesId) throws Exception;
    
}
