package com.sakuraruo.parfaitDAO.mapper;

import org.apache.ibatis.annotations.Param;

import com.sakuraruo.parfaitDAO.model.Cover;

public interface CoverMapper {
    Cover findCoverById(@Param("cover_id") long coverId) throws Exception;
}
