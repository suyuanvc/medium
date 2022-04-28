package com.ruoyi.sign.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 【请填写功能名称】对象 sign_habit
 * 
 * @author ruoyi
 * @date 2022-04-28
 */
public class SignHabit extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** $column.columnComment */
    private Integer habitId;

    /** 习惯名称 */
    @Excel(name = "习惯名称")
    private String habitName;

    /** 习惯描述 */
    @Excel(name = "习惯描述")
    private String habitDesc;

    /** 习惯热度 */
    @Excel(name = "习惯热度")
    private Long habitHot;

    public void setHabitId(Integer habitId) 
    {
        this.habitId = habitId;
    }

    public Integer getHabitId() 
    {
        return habitId;
    }
    public void setHabitName(String habitName) 
    {
        this.habitName = habitName;
    }

    public String getHabitName() 
    {
        return habitName;
    }
    public void setHabitDesc(String habitDesc) 
    {
        this.habitDesc = habitDesc;
    }

    public String getHabitDesc() 
    {
        return habitDesc;
    }
    public void setHabitHot(Long habitHot) 
    {
        this.habitHot = habitHot;
    }

    public Long getHabitHot() 
    {
        return habitHot;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("habitId", getHabitId())
            .append("habitName", getHabitName())
            .append("habitDesc", getHabitDesc())
            .append("habitHot", getHabitHot())
            .append("createTime", getCreateTime())
            .append("createBy", getCreateBy())
            .append("updateTime", getUpdateTime())
            .append("updateBy", getUpdateBy())
            .toString();
    }
}
