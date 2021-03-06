package com.customer;

import java.util.List;

public interface MemberDao {
    //查询所有会员信息
    List<Member> getAllMembers();
    //修改会员信息
    int updateMember(Member member);
    //添加会员
    int addMember(Member member);
}
