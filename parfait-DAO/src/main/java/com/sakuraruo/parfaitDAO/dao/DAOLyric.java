package com.sakuraruo.parfaitDAO.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.sakuraruo.parfaitDAO.mapper.LyricMapper;
import com.sakuraruo.parfaitDAO.model.Lyric;

@Component
public class DAOLyric implements IDAOLyric{
    @Autowired
    LyricMapper lyricMapper;
    @Override
    public Lyric findLyricBysingleId(long singlesId) throws Exception {
        return lyricMapper.findLyricBysingleId(singlesId);
    }
    
    
}
