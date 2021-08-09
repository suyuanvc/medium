package com.ruoyi.study.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 【请填写功能名称】对象 study_circle
 * 
 * @author ruoyi
 * @date 2021-08-01
 */
public class StudyCircle extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 书吧 圈子 */
    private Long id;

    /** 圈子编号 */
    @Excel(name = "圈子编号")
    private String number;

    /** 圈子名称 */
    @Excel(name = "圈子名称")
    private String name;

    /** 圈子简介 */
    @Excel(name = "圈子简介")
    private String introduction;

    /** 圈子人数 */
    @Excel(name = "圈子人数")
    private Integer personNumber;

    /** 头像地址 */
    @Excel(name = "头像地址")
    private String picUrl;

    /** 圈子总地址 */
    @Excel(name = "圈子总地址")
    private String address;

    /** 圈子口号 */
    @Excel(name = "圈子口号")
    private String slogan;

    /** $column.columnComment */
    @Excel(name = "圈子口号")
    private String delflag;

    /** 关联study_main表 */
    @Excel(name = "关联study_main表")
    private Long mainId;

    /** 负责人 */
    @Excel(name = "负责人")
    private String leader;

    /** $column.columnComment */
    @Excel(name = "负责人")
    private Long leaderId;

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
    public void setPersonNumber(Integer personNumber) 
    {
        this.personNumber = personNumber;
    }

    public Integer getPersonNumber() 
    {
        return personNumber;
    }
    public void setPicUrl(String picUrl) 
    {
        this.picUrl = picUrl;
    }

    public String getPicUrl() 
    {
        return picUrl;
    }
    public void setAddress(String address) 
    {
        this.address = address;
    }

    public String getAddress() 
    {
        return address;
    }
    public void setSlogan(String slogan) 
    {
        this.slogan = slogan;
    }

    public String getSlogan() 
    {
        return slogan;
    }
    public void setDelflag(String delflag) 
    {
        this.delflag = delflag;
    }

    public String getDelflag() 
    {
        return delflag;
    }
    public void setMainId(Long mainId) 
    {
        this.mainId = mainId;
    }

    public Long getMainId() 
    {
        return mainId;
    }
    public void setLeader(String leader) 
    {
        this.leader = leader;
    }

    public String getLeader() 
    {
        return leader;
    }
    public void setLeaderId(Long leaderId) 
    {
        this.leaderId = leaderId;
    }

    public Long getLeaderId() 
    {
        return leaderId;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("number", getNumber())
            .append("name", getName())
            .append("introduction", getIntroduction())
            .append("personNumber", getPersonNumber())
            .append("picUrl", getPicUrl())
            .append("address", getAddress())
            .append("slogan", getSlogan())
            .append("createTime", getCreateTime())
            .append("createBy", getCreateBy())
            .append("updateTime", getUpdateTime())
            .append("updateBy", getUpdateBy())
            .append("remark", getRemark())
            .append("delflag", getDelflag())
            .append("mainId", getMainId())
            .append("leader", getLeader())
            .append("leaderId", getLeaderId())
            .toString();
    }
}
