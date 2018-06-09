package com.sakuraruo.parfaitDAO.TestService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sakuraruo.parfaitDAO.dao.IDAOMember;
import com.sakuraruo.parfaitDAO.model.Member;


@Service
public class MemberService implements IMemberService{
    @Autowired
    private IDAOMember daoMember;

    @Override
    public Member findMemberByUid(Long uid) throws Exception {
        return daoMember.findMemberByUid(uid);
    }

    @Override
    public Member findMemberByMemberId(Integer memberId) throws Exception {
        return daoMember.findMemberByMemberId(memberId);
    }
}
