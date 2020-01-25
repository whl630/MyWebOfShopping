package com.service.impl;

import com.customer.Member;
import com.customer.MemberDao;
import com.service.CustomerMemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

//会员操作
@Service
public class CustomerMemberServiceImpl implements CustomerMemberService {
    @Autowired
    private MemberDao memberDao;

    @Override
    public List<Member> getAllMembers() {
        return memberDao.getAllMembers();
    }

    @Override
    public int updateMember(Member member) {
        return memberDao.updateMember(member);
    }

    @Override
    public int addMember(Member member) {
        return memberDao.addMember(member);
    }
}
