package com.servlet.back.customer;

import com.customer.Member;
import com.service.CustomerMemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/member")
public class CMRDCustomerMember {
    @Autowired
    private CustomerMemberService  customerMemberService;

    @RequestMapping("/listAllMember")
    public ModelAndView getAllMembers(Model model){
        ModelAndView mav = new ModelAndView();
        List<Member> members = customerMemberService.getAllMembers();
        model.addAttribute("member",members);
        mav.setViewName("backstage/customer/member/getAllMembers");
        return mav;
    }
}
