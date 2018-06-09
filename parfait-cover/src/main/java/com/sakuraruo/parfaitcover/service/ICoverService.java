package com.sakuraruo.parfaitcover.service;

import com.sakuraruo.parfaitDAO.model.Cover;

public interface ICoverService {
    Cover findCoverById(long coverId)throws Exception;
    
}
