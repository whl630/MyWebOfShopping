package com.customer;

import lombok.Data;
import lombok.NoArgsConstructor;

import javax.validation.constraints.NotNull;

@Data
@NoArgsConstructor
public class Member {
    private int  mid;//会员编号
    @NotNull
    private int aid;//顾客外键
    private int ismember;//是否会员
    private String memberTime;//注册会员时间
    private int expirationTime;//会员注册到到期时长

    public Member(int mid, int aid, int ismember, String memberTime, int expirationTime) {
        this.mid = mid;
        this.aid = aid;
        this.ismember = ismember;
        this.memberTime = memberTime;
        this.expirationTime = expirationTime;
    }
}
