package com.ruoyi.sign.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 【请填写功能名称】对象 sign_list
 * 
 * @author ruoyi
 * @date 2022-04-28
 */
public class SignList extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** $column.columnComment */
    private Long signRecordId;

    /** 关联sign_record表id */
    @Excel(name = "关联sign_record表id")
    private Long recordId;

    /** 关联sign_habit表id */
    @Excel(name = "关联sign_habit表id")
    private Long habitId;

    /** 打卡小时数 */
    @Excel(name = "打卡小时数")
    private Integer signDurationHour;

    /** 打卡分钟数 */
    @Excel(name = "打卡分钟数")
    private Integer signDurationMinute;

    /** 打卡心得 */
    @Excel(name = "打卡心得")
    private String signExperience;

    /** $column.columnComment */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "打卡心得", width = 30, dateFormat = "yyyy-MM-dd")
    private Date startTime;

    /** $column.columnComment */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "打卡心得", width = 30, dateFormat = "yyyy-MM-dd")
    private Date endTime;

    public void setSignRecordId(Long signRecordId) 
    {
        this.signRecordId = signRecordId;
    }

    public Long getSignRecordId() 
    {
        return signRecordId;
    }
    public void setRecordId(Long recordId) 
    {
        this.recordId = recordId;
    }

    public Long getRecordId() 
    {
        return recordId;
    }
    public void setHabitId(Long habitId) 
    {
        this.habitId = habitId;
    }

    public Long getHabitId() 
    {
        return habitId;
    }
    public void setSignDurationHour(Integer signDurationHour) 
    {
        this.signDurationHour = signDurationHour;
    }

    public Integer getSignDurationHour() 
    {
        return signDurationHour;
    }
    public void setSignDurationMinute(Integer signDurationMinute) 
    {
        this.signDurationMinute = signDurationMinute;
    }

    public Integer getSignDurationMinute() 
    {
        return signDurationMinute;
    }
    public void setSignExperience(String signExperience) 
    {
        this.signExperience = signExperience;
    }

    public String getSignExperience() 
    {
        return signExperience;
    }
    public void setStartTime(Date startTime) 
    {
        this.startTime = startTime;
    }

    public Date getStartTime() 
    {
        return startTime;
    }
    public void setEndTime(Date endTime) 
    {
        this.endTime = endTime;
    }

    public Date getEndTime() 
    {
        return endTime;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("signRecordId", getSignRecordId())
            .append("recordId", getRecordId())
            .append("habitId", getHabitId())
            .append("signDurationHour", getSignDurationHour())
            .append("signDurationMinute", getSignDurationMinute())
            .append("signExperience", getSignExperience())
            .append("startTime", getStartTime())
            .append("endTime", getEndTime())
            .toString();
    }
}
