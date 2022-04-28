package com.ruoyi.sign.service;

import java.util.List;
import com.ruoyi.sign.domain.SignHabit;

/**
 * 【请填写功能名称】Service接口
 * 
 * @author ruoyi
 * @date 2022-04-28
 */
public interface ISignHabitService 
{
    /**
     * 查询【请填写功能名称】
     * 
     * @param habitId 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    public SignHabit selectSignHabitById(Integer habitId);

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param signHabit 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<SignHabit> selectSignHabitList(SignHabit signHabit);

    /**
     * 新增【请填写功能名称】
     * 
     * @param signHabit 【请填写功能名称】
     * @return 结果
     */
    public int insertSignHabit(SignHabit signHabit);

    /**
     * 修改【请填写功能名称】
     * 
     * @param signHabit 【请填写功能名称】
     * @return 结果
     */
    public int updateSignHabit(SignHabit signHabit);

    /**
     * 批量删除【请填写功能名称】
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteSignHabitByIds(String ids);

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param habitId 【请填写功能名称】ID
     * @return 结果
     */
    public int deleteSignHabitById(Integer habitId);
}
