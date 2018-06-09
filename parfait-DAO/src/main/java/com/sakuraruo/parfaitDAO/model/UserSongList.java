package com.sakuraruo.parfaitDAO.model;

import java.util.Date;

public class UserSongList {
    private Long userSongListId;

    private String userSongListName;

    private Long userId;

    private Date createDate;

    private Long createUser;

    private Date updateDate;

    public Long getUserSongListId() {
        return userSongListId;
    }

    public void setUserSongListId(Long userSongListId) {
        this.userSongListId = userSongListId;
    }

    public String getUserSongListName() {
        return userSongListName;
    }

    public void setUserSongListName(String userSongListName) {
        this.userSongListName = userSongListName == null ? null : userSongListName.trim();
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
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