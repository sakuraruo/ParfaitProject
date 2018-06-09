package com.sakuraruo.parfaitDAO.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.sakuraruo.parfaitDAO.model.Singles;

public interface SinglesMapper {
    Singles findSingleById(@Param("singles_id") long singlesId) throws Exception;
    List<Singles> findSingleByAlbumId(@Param("album_id")long albumId) throws Exception;
    Singles findSingleBySingleId(@Param("singles_id") long singlesId) throws Exception;
    List<Singles> searchSingle(@Param("singles_name")String singlesName) throws Exception;
}
