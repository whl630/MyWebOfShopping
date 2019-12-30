package com.customer;

import java.util.List;

public interface MemberDao {
    //查询所有会员信息
    List<Member> getAllMembers();
}
