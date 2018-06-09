package com.sakuraruo.parfaitweb.pagecontroller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.sakuraruo.parfaitcommon.resolveLyric.LrcAnalyze;
import com.sakuraruo.parfaitcommon.resolveLyric.LyricData;
import com.sakuraruo.parfaitlyric.service.ILyricService;

@RestController
public class LyricController {
    @Autowired
    ILyricService lyricService;
    
    @RequestMapping("/LyricInfo")
    public List<LyricData> findLyricBysingleId(@RequestParam(defaultValue="2") long singlesId)throws Exception{
        com.sakuraruo.parfaitDAO.model.Lyric lyric=lyricService.findLyricBysingleId(singlesId);
        List<LyricData> lrc=new LrcAnalyze(lyric.getLyricPath()).LrcGetList();
        return lrc.subList(5, lrc.size());

    }
}
