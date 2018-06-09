package com.sakuraruo.parfaitDAO.model;

import java.util.Date;

public class Privilege {
    private Long privilegeId;

    private String privilegeName;

    private String privilegePath;

    private Date createDate;

    private Long createUser;

    private Date updateDate;

    public Long getPrivilegeId() {
        return privilegeId;
    }

    public void setPrivilegeId(Long privilegeId) {
        this.privilegeId = privilegeId;
    }

    public String getPrivilegeName() {
        return privilegeName;
    }

    public void setPrivilegeName(String privilegeName) {
        this.privilegeName = privilegeName == null ? null : privilegeName.trim();
    }

    public String getPrivilegePath() {
        return privilegePath;
    }

    public void setPrivilegePath(String privilegePath) {
        this.privilegePath = privilegePath == null ? null : privilegePath.trim();
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