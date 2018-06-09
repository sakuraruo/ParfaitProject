package com.sakuraruo.parfaitlyric.service;

import com.sakuraruo.parfaitDAO.model.Lyric;

public interface ILyricService {
    Lyric findLyricBysingleId( long singlesId)throws Exception;
}
