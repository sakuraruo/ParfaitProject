package com.sakuraruo.parfaitDAO.model;

import java.util.Date;

public class Lyric {
    private Long lyricId;

    private Long singlesId;

    private String lyricPath;

    private Date createDate;

    private Long createUser;

    private Date updateDate;

    public Long getLyricId() {
        return lyricId;
    }

    public void setLyricId(Long lyricId) {
        this.lyricId = lyricId;
    }

    public Long getSinglesId() {
        return singlesId;
    }

    public void setSinglesId(Long singlesId) {
        this.singlesId = singlesId;
    }

    public String getLyricPath() {
        return lyricPath;
    }

    public void setLyricPath(String lyricPath) {
        this.lyricPath = lyricPath == null ? null : lyricPath.trim();
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public Long getCreateUser() {
        return createUser;
    }

    public void setCreateUser(Long createUser) {
        this.createUser = createUser;
    }

    public Date getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }
}