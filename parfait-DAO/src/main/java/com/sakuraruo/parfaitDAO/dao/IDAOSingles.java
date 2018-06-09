package com.sakuraruo.parfaitDAO.dao;

import java.util.List;

import com.sakuraruo.parfaitDAO.model.Singles;

public interface IDAOSingles {
    Singles findSingleById(long singlesID) throws Exception;
    List<Singles> findSingleByALbumId(long albumId) throws Exception;
    Singles findSingleBySingleId( long singlesId) throws Exception;
    List<Singles> searchSingle(String singlesName) throws Exception;
}
