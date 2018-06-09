package com.sakuraruo.parfaitDAO.dao;

import com.sakuraruo.parfaitDAO.model.Member;

public interface IDAOMember {
    Member findMemberByUid(Long uid) throws Exception;

    Member findMemberByMemberId(Integer memberId) throws Exception;
}
