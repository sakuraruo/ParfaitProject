package com.sakuraruo.parfaitDAO.TestService;

import com.sakuraruo.parfaitDAO.model.Member;

public interface IMemberService {
    Member findMemberByUid(Long uid) throws Exception;

    Member findMemberByMemberId(Integer memberId) throws Exception;
}
