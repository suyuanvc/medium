package com.ruoyi.study.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 【请填写功能名称】对象 study_main
 * 
 * @author ruoyi
 * @date 2021-08-01
 */
public class StudyMain extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 书吧主表 主键ID */
    private Long id;

    /** 名称 */
    @Excel(name = "名称")
    private String name;

    /** 1 单位   2 个人 */
    @Excel(name = "1 单位   2 个人")
    private String type;

    /** 地址 */
    @Excel(name = "地址")
    private String address;

    /** 主人寄语 */
    @Excel(name = "主人寄语")
    private String hostMsg;

    /** 推荐书籍 */
    @Excel(name = "推荐书籍")
    private String recommendBooks;

    /** 手机号 */
    @Excel(name = "手机号")
    private String phone;

    /** email */
    @Excel(name = "email")
    private String email;

    /** 状态（0正常 1停用） */
    @Excel(name = "状态", readConverterExp = "0=正常,1=停用")
    private String status;

    /** 删除标识（0代表存在 2代表删除） */
    private String delFlag;

    /** 负责人 */
    @Excel(name = "负责人")
    private String leader;

    /** 头像地址 */
    @Excel(name = "头像地址")
    private String picUrl;

    /** 编号 */
    @Excel(name = "编号")
    private String number;

    /** 简要说明 */
    @Excel(name = "简要说明")
    private String introduction;

    /** 负责人ID */
    @Excel(name = "负责人ID")
    private Long leaderId;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setName(String name) 
    {
        this.name = name;
    }

    public String getName() 
    {
        return name;
    }
    public void setType(String type) 
    {
        this.type = type;
    }

    public String getType() 
    {
        return type;
    }
    public void setAddress(String address) 
    {
        this.address = address;
    }

    public String getAddress() 
    {
        return address;
    }
    public void setHostMsg(String hostMsg) 
    {
        this.hostMsg = hostMsg;
    }

    public String getHostMsg() 
    {
        return hostMsg;
    }
    public void setRecommendBooks(String recommendBooks) 
    {
        this.recommendBooks = recommendBooks;
    }

    public String getRecommendBooks() 
    {
        return recommendBooks;
    }
    public void setPhone(String phone) 
    {
        this.phone = phone;
    }

    public String getPhone() 
    {
        return phone;
    }
    public void setEmail(String email) 
    {
        this.email = email;
    }

    public String getEmail() 
    {
        return email;
    }
    public void setStatus(String status) 
    {
        this.status = status;
    }

    public String getStatus() 
    {
        return status;
    }
    public void setDelFlag(String delFlag) 
    {
        this.delFlag = delFlag;
    }

    public String getDelFlag() 
    {
        return delFlag;
    }
    public void setLeader(String leader) 
    {
        this.leader = leader;
    }

    public String getLeader() 
    {
        return leader;
    }
    public void setPicUrl(String picUrl) 
    {
        this.picUrl = picUrl;
    }

    public String getPicUrl() 
    {
        return picUrl;
    }
    public void setNumber(String number) 
    {
        this.number = number;
    }

    public String getNumber() 
    {
        return number;
    }
    public void setIntroduction(String introduction) 
    {
        this.introduction = introduction;
    }

    public String getIntroduction() 
    {
        return introduction;
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
            .append("name", getName())
            .append("type", getType())
            .append("address", getAddress())
            .append("hostMsg", getHostMsg())
            .append("recommendBooks", getRecommendBooks())
            .append("phone", getPhone())
            .append("email", getEmail())
            .append("status", getStatus())
            .append("delFlag", getDelFlag())
            .append("leader", getLeader())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .append("picUrl", getPicUrl())
            .append("remark", getRemark())
            .append("number", getNumber())
            .append("introduction", getIntroduction())
            .append("leaderId", getLeaderId())
            .toString();
    }
}
