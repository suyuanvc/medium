package com.ruoyi.sports.domain;

import com.ruoyi.common.core.domain.BaseEntity;

public class Walking extends BaseEntity {

    private int id;
    /** 跑步团编号 **/
    private String number;
    /** 跑步团名称 **/
    private String name;
    /** 跑步团简介 **/
    private String introduction;
    /** 成员总数 **/
    private int PersonNumber;


    /** 跑步团所在城市 **/
    private String city;
    /** 跑步团所在城市具体地点（地标如公园） **/
    private String address;
    /** 类型 5公里 10公里 **/
    private String mileage;
    /** 1 成员只能个人  2 成员只能圈子  3 成员既可以有个人也可以有圈子  **/
    private String type;
    /** 人数规模：10人 20人 50人 100人 200人 500人 1000人等等  **/
    private int scale;

    /** 跑步团头像地址 **/
    private String picUrl;
    /** 跑步团头像存储服务器地址 **/
    private String serviceUrl;

    /**  排名 **/
    private int ranking;
    /** 跑步总里程 **/
    private double totalMileage;
    /** 跑步总时长 **/
    private String totalTime;
    /** 发起加入活动总数 **/
    private int totalActivity;

}
