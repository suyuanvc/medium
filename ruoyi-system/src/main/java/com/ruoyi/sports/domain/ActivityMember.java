package com.ruoyi.sports.domain;

import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 活动成员 个人或圈子成员
 */
public class ActivityMember extends BaseEntity {

    private int id;
    /**  1 个人  2 圈子 **/
    private String type;
    /** 成员编号 **/
    private String memberId;

    private String name;

    private String idCard;

    private int age;

    private String sex;

    private String phone;
}
