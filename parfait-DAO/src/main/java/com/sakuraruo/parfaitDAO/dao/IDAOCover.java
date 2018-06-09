package com.sakuraruo.parfaitDAO.dao;

import com.sakuraruo.parfaitDAO.model.Cover;

public interface IDAOCover {
    Cover findCoverById( long coverId) throws Exception;
}
