package com.sakuraruo.parfaitsingles.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sakuraruo.parfaitDAO.dao.IDAOSingles;
import com.sakuraruo.parfaitDAO.model.Singles;
@Service
public class SinglesService1 implements ISinglesService{
    
    @Autowired
    IDAOSingles daoSingles;
    @Override
    public Singles findSinglesById(long singleId) throws Exception {
        return daoSingles.findSingleById(singleId);
    }

    @Override
    public List<Singles> findSingleByAlbumId(long albumId) throws Exception {
        return daoSingles.findSingleByALbumId(albumId);
    }

    @Override
    public Singles findSingleBySingleId(long singlesId) throws Exception {
        return daoSingles.findSingleBySingleId(singlesId);
    }

    
    
}
