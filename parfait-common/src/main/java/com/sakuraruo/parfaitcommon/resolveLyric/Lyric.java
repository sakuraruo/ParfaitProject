package com.sakuraruo.parfaitcommon.resolveLyric;
/**
 * 用来封装歌词信息的实体类
 * .
 * 
 * @版权：福富软件 版权所有 (c) 2011
 * @author sakuraruo
 * @version Revision 1.0.0
 * @see:
 * @创建日期：2018年5月10日
 * @功能说明：
 *
 */

import java.util.HashMap;

public class Lyric {
    private String title;
    private String singer;
    private String album;
    private HashMap<Long, String> infos;
    public String getTitle() {
        return title;
    }
    public void setTitle(String title) {
        this.title = title;
    }
    public String getSinger() {
        return singer;
    }
    public void setSinger(String singer) {
        this.singer = singer;
    }
    public String getAlbum() {
        return album;
    }
    public void setAlbum(String album) {
        this.album = album;
    }
    public HashMap<Long, String> getInfos() {
        return infos;
    }
    public void setInfos(HashMap<Long, String> maps) {
        this.infos = maps;
    }
    
    
    
}
