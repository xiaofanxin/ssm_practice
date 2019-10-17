package com.skeyedu.dao.member;

import com.skeyedu.pojo.Member;
import com.skeyedu.pojo.MemberSearchParam;

import java.util.List;

public interface MemberDao {
    Integer queryCount(MemberSearchParam memberSearchParam);

    List<Member> queryList(MemberSearchParam memberSearchParam);

}
