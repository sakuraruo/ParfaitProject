package com.sakuraruo.parfaitDAO.TestService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sakuraruo.parfaitDAO.dao.DAOSingles;
import com.sakuraruo.parfaitDAO.model.Singles;
@Service
public class SinglesService implements ISinglesService{
    @Autowired
    DAOSingles daoSingles;
    @Override
    public Singles findSingleById(long singlesId) throws Exception {
        return daoSingles.findSingleById(singlesId);
    }
    @Override
    public List<Singles> findSingleByAlbumId(long albumId) throws Exception {
        return daoSingles.findSingleByALbumId(albumId);
    }
    
}
