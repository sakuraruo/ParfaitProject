package com.sakuraruo.parfaitDAO.mapper;

import org.apache.ibatis.annotations.Param;

import com.sakuraruo.parfaitDAO.model.Member;



public interface MemberMapper {
    Member findMemberByUid(@Param("uid") Long uid) throws Exception;

    Member findMemberByMemberId(@Param("employee_id") Integer memberId) throws Exception;

}
