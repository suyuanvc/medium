package com.ruoyi.sports.domain;

import com.ruoyi.common.core.domain.BaseEntity;

import java.util.Date;

/**
 * 活动
 */
public class Activity extends BaseEntity {

    private int id;
    /**  1 跑步  2 徒步 **/
    private String type;
    /** 活动编号  **/
    private String number;
    /** 活动名称 **/
    private String name;
    /** 活动简介 **/
    private String introduction;
    /** 活动具体地点（地标如公园） **/
    private String address;
    /** 活动头像地址 **/
    private String picUrl;
    /** 活动头像存储服务器地址 **/
    private String serviceUrl;
    /** 活动时间 **/
    private Date activityTime;
    /** 活动届数 **/
    private int sessions;

}
