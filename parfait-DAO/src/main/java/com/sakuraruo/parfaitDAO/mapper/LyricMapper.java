package com.sakuraruo.parfaitDAO.mapper;

import org.apache.ibatis.annotations.Param;

import com.sakuraruo.parfaitDAO.model.Lyric;

public interface LyricMapper {
    Lyric findLyricBysingleId(@Param("singles_id") long singlesId) throws Exception;
}
