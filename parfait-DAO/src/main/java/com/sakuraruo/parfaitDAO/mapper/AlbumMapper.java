package com.sakuraruo.parfaitDAO.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.sakuraruo.parfaitDAO.model.Album;

public interface AlbumMapper {
    Album findAlbumById(@Param("album_id") long albumId) throws Exception;
    List<Album> searchAlbum(@Param("album_name")String albumName)throws Exception;
}
