package com.sakuraruo.parfaitDAO.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.sakuraruo.parfaitDAO.mapper.MemberMapper;
import com.sakuraruo.parfaitDAO.model.Member;


@Component
public class DAOMember implements IDAOMember{

    @Autowired
    private MemberMapper memberMapper;

    @Override
    public Member findMemberByUid(Long uid) throws Exception {
        return memberMapper.findMemberByUid(uid);
    }

    @Override
    public Member findMemberByMemberId(Integer memberId) throws Exception {
        return memberMapper.findMemberByMemberId(memberId);
    }
}
