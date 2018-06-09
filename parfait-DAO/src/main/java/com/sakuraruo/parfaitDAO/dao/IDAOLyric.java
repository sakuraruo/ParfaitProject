package com.sakuraruo.parfaitDAO.dao;

import com.sakuraruo.parfaitDAO.model.Lyric;

public interface IDAOLyric {
    Lyric findLyricBysingleId(long singlesId)throws Exception;
}
