package com.ruoyi.sports.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 【请填写功能名称】对象 sports_running
 * 
 * @author ruoyi
 * @date 2021-05-12
 */
public class SportsRunning extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** $column.columnComment */
    private Long id;

    /** 编号 */
    @Excel(name = "编号")
    private String number;

    /** 跑步团名称 */
    @Excel(name = "跑步团名称")
    private String name;

    /** 跑步团简介 */
    @Excel(name = "跑步团简介")
    private String introduction;

    /** 成员总数 */
    @Excel(name = "成员总数")
    private Long personNumber;

    /** 跑步团所在城市 */
    @Excel(name = "跑步团所在城市")
    private String city;

    /** 跑步团所在城市具体地点（地标如公园） */
    @Excel(name = "跑步团所在城市具体地点", readConverterExp = "地=标如公园")
    private String address;

    /** 类型 5公里 10公里 */
    @Excel(name = "类型 5公里 10公里")
    private String mileage;

    /** 1 成员只能个人  2 成员只能圈子  3 成员既可以有个人也可以有圈子 */
    @Excel(name = "1 成员只能个人  2 成员只能圈子  3 成员既可以有个人也可以有圈子")
    private String type;

    /** 跑步团头像地址 */
    @Excel(name = "跑步团头像地址")
    private String picUrl;

    /** 人数规模：10人 20人 50人 100人 200人 500人 1000人等等 */
    @Excel(name = "人数规模：10人 20人 50人 100人 200人 500人 1000人等等")
    private String scale;

    /** 跑步团头像存储服务器地址 */
    @Excel(name = "跑步团头像存储服务器地址")
    private String serviceUrl;

    /** 排名 */
    @Excel(name = "排名")
    private Integer ranking;

    /** 跑步总里程 */
    @Excel(name = "跑步总里程")
    private Long totalMileage;

    /** 跑步总时长 */
    @Excel(name = "跑步总时长")
    private Long totalTime;

    /** 发起加入活动总数 */
    @Excel(name = "发起加入活动总数")
    private Integer totalActivity;

    /** $column.columnComment */
    @Excel(name = "发起加入活动总数")
    private String delflag;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setNumber(String number) 
    {
        this.number = number;
    }

    public String getNumber() 
    {
        return number;
    }
    public void setName(String name) 
    {
        this.name = name;
    }

    public String getName() 
    {
        return name;
    }
    public void setIntroduction(String introduction) 
    {
        this.introduction = introduction;
    }

    public String getIntroduction() 
    {
        return introduction;
    }
    public void setPersonNumber(Long personNumber) 
    {
        this.personNumber = personNumber;
    }

    public Long getPersonNumber() 
    {
        return personNumber;
    }
    public void setCity(String city) 
    {
        this.city = city;
    }

    public String getCity() 
    {
        return city;
    }
    public void setAddress(String address) 
    {
        this.address = address;
    }

    public String getAddress() 
    {
        return address;
    }
    public void setMileage(String mileage) 
    {
        this.mileage = mileage;
    }

    public String getMileage() 
    {
        return mileage;
    }
    public void setType(String type) 
    {
        this.type = type;
    }

    public String getType() 
    {
        return type;
    }
    public void setPicUrl(String picUrl) 
    {
        this.picUrl = picUrl;
    }

    public String getPicUrl() 
    {
        return picUrl;
    }
    public void setScale(String scale) 
    {
        this.scale = scale;
    }

    public String getScale() 
    {
        return scale;
    }
    public void setServiceUrl(String serviceUrl) 
    {
        this.serviceUrl = serviceUrl;
    }

    public String getServiceUrl() 
    {
        return serviceUrl;
    }
    public void setRanking(Integer ranking) 
    {
        this.ranking = ranking;
    }

    public Integer getRanking() 
    {
        return ranking;
    }
    public void setTotalMileage(Long totalMileage) 
    {
        this.totalMileage = totalMileage;
    }

    public Long getTotalMileage() 
    {
        return totalMileage;
    }
    public void setTotalTime(Long totalTime) 
    {
        this.totalTime = totalTime;
    }

    public Long getTotalTime() 
    {
        return totalTime;
    }
    public void setTotalActivity(Integer totalActivity) 
    {
        this.totalActivity = totalActivity;
    }

    public Integer getTotalActivity() 
    {
        return totalActivity;
    }
    public void setDelflag(String delflag) 
    {
        this.delflag = delflag;
    }

    public String getDelflag() 
    {
        return delflag;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("number", getNumber())
            .append("name", getName())
            .append("introduction", getIntroduction())
            .append("personNumber", getPersonNumber())
            .append("city", getCity())
            .append("address", getAddress())
            .append("mileage", getMileage())
            .append("type", getType())
            .append("picUrl", getPicUrl())
            .append("scale", getScale())
            .append("serviceUrl", getServiceUrl())
            .append("ranking", getRanking())
            .append("totalMileage", getTotalMileage())
            .append("totalTime", getTotalTime())
            .append("totalActivity", getTotalActivity())
            .append("createTime", getCreateTime())
            .append("createBy", getCreateBy())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .append("remark", getRemark())
            .append("delflag", getDelflag())
            .toString();
    }
}
