package com.sakuraruo.parfaitlyric.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sakuraruo.parfaitDAO.dao.IDAOLyric;
import com.sakuraruo.parfaitDAO.model.Lyric;
@Service
public class LyricService implements ILyricService{
    @Autowired
    IDAOLyric daoLyric;
    @Override
    public Lyric findLyricBysingleId(long singlesId) throws Exception {
        return daoLyric.findLyricBysingleId(singlesId);
    }
    
}
