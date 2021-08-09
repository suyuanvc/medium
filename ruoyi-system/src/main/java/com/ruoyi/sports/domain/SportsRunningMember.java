package com.ruoyi.sports.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 【请填写功能名称】对象 sports_running_member
 * 
 * @author ruoyi
 * @date 2021-05-13
 */
public class SportsRunningMember extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** $column.columnComment */
    private Long id;

    /** 1 个人  2 圈子 */
    @Excel(name = "1 个人  2 圈子")
    private String type;

    /** 成员编号 */
    @Excel(name = "成员编号")
    private String memberId;

    /** 成员姓名 */
    @Excel(name = "成员姓名")
    private String name;

    /** 身份证号码 */
    @Excel(name = "身份证号码")
    private String idCard;

    /** $column.columnComment */
    @Excel(name = "身份证号码")
    private Integer age;

    /** $column.columnComment */
    @Excel(name = "身份证号码")
    private String sex;

    /** $column.columnComment */
    @Excel(name = "身份证号码")
    private String phone;

    /** $column.columnComment */
    @Excel(name = "身份证号码")
    private String delflag;

    /** 爱好 特长 */
    @Excel(name = "爱好 特长")
    private String hobby;

    /** $column.columnComment */
    @Excel(name = "爱好 特长")
    private String picUrl;

    /** $column.columnComment */
    @Excel(name = "爱好 特长")
    private String nikeName;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setType(String type) 
    {
        this.type = type;
    }

    public String getType() 
    {
        return type;
    }
    public void setMemberId(String memberId) 
    {
        this.memberId = memberId;
    }

    public String getMemberId() 
    {
        return memberId;
    }
    public void setName(String name) 
    {
        this.name = name;
    }

    public String getName() 
    {
        return name;
    }
    public void setIdCard(String idCard) 
    {
        this.idCard = idCard;
    }

    public String getIdCard() 
    {
        return idCard;
    }
    public void setAge(Integer age) 
    {
        this.age = age;
    }

    public Integer getAge() 
    {
        return age;
    }
    public void setSex(String sex) 
    {
        this.sex = sex;
    }

    public String getSex() 
    {
        return sex;
    }
    public void setPhone(String phone) 
    {
        this.phone = phone;
    }

    public String getPhone() 
    {
        return phone;
    }
    public void setDelflag(String delflag) 
    {
        this.delflag = delflag;
    }

    public String getDelflag() 
    {
        return delflag;
    }
    public void setHobby(String hobby) 
    {
        this.hobby = hobby;
    }

    public String getHobby() 
    {
        return hobby;
    }
    public void setPicUrl(String picUrl) 
    {
        this.picUrl = picUrl;
    }

    public String getPicUrl() 
    {
        return picUrl;
    }
    public void setNikeName(String nikeName) 
    {
        this.nikeName = nikeName;
    }

    public String getNikeName() 
    {
        return nikeName;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("type", getType())
            .append("memberId", getMemberId())
            .append("name", getName())
            .append("idCard", getIdCard())
            .append("age", getAge())
            .append("sex", getSex())
            .append("phone", getPhone())
            .append("createTime", getCreateTime())
            .append("createBy", getCreateBy())
            .append("updateTime", getUpdateTime())
            .append("updateBy", getUpdateBy())
            .append("remark", getRemark())
            .append("delflag", getDelflag())
            .append("hobby", getHobby())
            .append("picUrl", getPicUrl())
            .append("nikeName", getNikeName())
            .toString();
    }
}
