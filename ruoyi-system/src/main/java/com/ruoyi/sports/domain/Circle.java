package com.ruoyi.sports.domain;

import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 圈子 附属于跑步团和徒步团 以团体名义
 */
public class Circle extends BaseEntity {

    private int id;
    /** 活动编号  **/
    private String number;
    /** 活动名称 **/
    private String name;
    /** 活动简介 **/
    private String introduction;

}
