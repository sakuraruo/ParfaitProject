package com.sakuraruo.parfaitDAO.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.sakuraruo.parfaitDAO.mapper.CoverMapper;
import com.sakuraruo.parfaitDAO.model.Cover;
@Component
public class DAOCover implements IDAOCover{
    @Autowired
    CoverMapper coverMapper;
    @Override
    public Cover findCoverById(long coverId) throws Exception {
        return coverMapper.findCoverById(coverId);
    }
    
}
