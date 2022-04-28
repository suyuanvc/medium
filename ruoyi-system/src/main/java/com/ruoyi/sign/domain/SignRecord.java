package com.ruoyi.sign.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 【请填写功能名称】对象 sign_record
 * 
 * @author ruoyi
 * @date 2022-04-28
 */
public class SignRecord extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** $column.columnComment */
    private Long recordId;

    /** 签到日期 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "签到日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date signDate;

    /** 签到描述 */
    @Excel(name = "签到描述")
    private String signDesc;

    /** $column.columnComment */
    @Excel(name = "签到描述")
    private String signUser;

    /** 签到时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "签到时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date signTime;

    /** 最后一次编辑时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "最后一次编辑时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date lastTime;

    /** $column.columnComment */
    @Excel(name = "最后一次编辑时间")
    private String signExperience;

    public void setRecordId(Long recordId) 
    {
        this.recordId = recordId;
    }

    public Long getRecordId() 
    {
        return recordId;
    }
    public void setSignDate(Date signDate) 
    {
        this.signDate = signDate;
    }

    public Date getSignDate() 
    {
        return signDate;
    }
    public void setSignDesc(String signDesc) 
    {
        this.signDesc = signDesc;
    }

    public String getSignDesc() 
    {
        return signDesc;
    }
    public void setSignUser(String signUser) 
    {
        this.signUser = signUser;
    }

    public String getSignUser() 
    {
        return signUser;
    }
    public void setSignTime(Date signTime) 
    {
        this.signTime = signTime;
    }

    public Date getSignTime() 
    {
        return signTime;
    }
    public void setLastTime(Date lastTime) 
    {
        this.lastTime = lastTime;
    }

    public Date getLastTime() 
    {
        return lastTime;
    }
    public void setSignExperience(String signExperience) 
    {
        this.signExperience = signExperience;
    }

    public String getSignExperience() 
    {
        return signExperience;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("recordId", getRecordId())
            .append("signDate", getSignDate())
            .append("signDesc", getSignDesc())
            .append("signUser", getSignUser())
            .append("signTime", getSignTime())
            .append("lastTime", getLastTime())
            .append("signExperience", getSignExperience())
            .toString();
    }
}
