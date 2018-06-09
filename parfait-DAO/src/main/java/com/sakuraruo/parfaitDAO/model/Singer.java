package com.sakuraruo.parfaitDAO.model;

import java.util.Date;

public class Singer {
    private Long singerId;

    private String singerName;

    private String singerDes;

    private Long coverId;

    private Date createDate;

    private Long createUser;

    private Date updateDate;

    public Long getSingerId() {
        return singerId;
    }

    public void setSingerId(Long singerId) {
        this.singerId = singerId;
    }

    public String getSingerName() {
        return singerName;
    }

    public void setSingerName(String singerName) {
        this.singerName = singerName == null ? null : singerName.trim();
    }

    public String getSingerDes() {
        return singerDes;
    }

    public void setSingerDes(String singerDes) {
        this.singerDes = singerDes == null ? null : singerDes.trim();
    }

    public Long getCoverId() {
        return coverId;
    }

    public void setCoverId(Long coverId) {
        this.coverId = coverId;
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