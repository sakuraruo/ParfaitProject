package com.sakuraruo.parfaitDAO.model;

import java.util.Date;

public class SongListSingleRel {
    private Long songlistSingleId;

    private Long songListId;

    private Long singleId;

    private Date createDate;

    private Long createUser;

    private Date updateDate;

    public Long getSonglistSingleId() {
        return songlistSingleId;
    }

    public void setSonglistSingleId(Long songlistSingleId) {
        this.songlistSingleId = songlistSingleId;
    }

    public Long getSongListId() {
        return songListId;
    }

    public void setSongListId(Long songListId) {
        this.songListId = songListId;
    }

    public Long getSingleId() {
        return singleId;
    }

    public void setSingleId(Long singleId) {
        this.singleId = singleId;
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