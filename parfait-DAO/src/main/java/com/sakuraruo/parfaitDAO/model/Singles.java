package com.sakuraruo.parfaitDAO.model;

import java.util.Date;

public class Singles {
    private Long singlesId;

    private String singlesName;

    private String singlesDes;

    private Long albumId;

    private Long singerId;

    private Long remarkId;
    
    private String singlesPath;

    private Long coverId;

    private Long lyricId;

    private Date createDate;

    private Long createUser;

    private Date updateDate;
    
    private String singlesDuration;
    
    private String singerName;
    
    private String albumName;
    
    
    
    

    public String getSingerName() {
        return singerName;
    }

    public void setSingerName(String singerName) {
        this.singerName = singerName;
    }

    public String getAlbumName() {
        return albumName;
    }

    public void setAlbumName(String albumName) {
        this.albumName = albumName;
    }

    public String getSinglesDuration() {
        return singlesDuration;
    }

    public void setSinglesDuration(String singlesDuration) {
        this.singlesDuration = singlesDuration;
    }

    public String getSinglesPath() {
        return singlesPath;
    }

    public void setSinglesPath(String singlesPath) {
        this.singlesPath = singlesPath;
    }

    public Long getSinglesId() {
        return singlesId;
    }

    public void setSinglesId(Long singlesId) {
        this.singlesId = singlesId;
    }

    public String getSinglesName() {
        return singlesName;
    }

    public void setSinglesName(String singlesName) {
        this.singlesName = singlesName == null ? null : singlesName.trim();
    }

    public String getSinglesDes() {
        return singlesDes;
    }

    public void setSinglesDes(String singlesDes) {
        this.singlesDes = singlesDes == null ? null : singlesDes.trim();
    }

    public Long getAlbumId() {
        return albumId;
    }

    public void setAlbumId(Long albumId) {
        this.albumId = albumId;
    }

    public Long getSingerId() {
        return singerId;
    }

    public void setSingerId(Long singerId) {
        this.singerId = singerId;
    }

    public Long getRemarkId() {
        return remarkId;
    }

    public void setRemarkId(Long remarkId) {
        this.remarkId = remarkId;
    }

    public Long getCoverId() {
        return coverId;
    }

    public void setCoverId(Long coverId) {
        this.coverId = coverId;
    }

    public Long getLyricId() {
        return lyricId;
    }

    public void setLyricId(Long lyricId) {
        this.lyricId = lyricId;
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