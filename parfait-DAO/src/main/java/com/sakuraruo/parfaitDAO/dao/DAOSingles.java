package com.sakuraruo.parfaitDAO.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.sakuraruo.parfaitDAO.mapper.SinglesMapper;
import com.sakuraruo.parfaitDAO.model.Singles;

@Component
public class DAOSingles implements IDAOSingles{
    
    @Autowired
    SinglesMapper singlesMapper;
    @Override
    public Singles findSingleById(long singlesId) throws Exception {
        return singlesMapper.findSingleById(singlesId);
    }
    @Override
    public List<Singles> findSingleByALbumId(long albumId) throws Exception {
        return singlesMapper.findSingleByAlbumId(albumId);
    }
    @Override
    public Singles findSingleBySingleId(long singlesId) throws Exception {
        return singlesMapper.findSingleBySingleId(singlesId);
    }
    @Override
    public List<Singles> searchSingle(String singlesName) throws Exception {
        return singlesMapper.searchSingle(singlesName);
    }
    
}
