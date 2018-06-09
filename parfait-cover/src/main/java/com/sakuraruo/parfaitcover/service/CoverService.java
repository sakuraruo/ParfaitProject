package com.sakuraruo.parfaitcover.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sakuraruo.parfaitDAO.dao.IDAOCover;
import com.sakuraruo.parfaitDAO.model.Cover;

@Service
public class CoverService implements ICoverService{
    @Autowired
    IDAOCover daoCover;

    @Override
    public Cover findCoverById(long coverId) throws Exception {
        return daoCover.findCoverById(coverId);
    }
}
