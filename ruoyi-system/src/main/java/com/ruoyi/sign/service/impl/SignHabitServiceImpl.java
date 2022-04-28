package com.ruoyi.sign.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.sign.mapper.SignHabitMapper;
import com.ruoyi.sign.domain.SignHabit;
import com.ruoyi.sign.service.ISignHabitService;
import com.ruoyi.common.core.text.Convert;

/**
 * 【请填写功能名称】Service业务层处理
 * 
 * @author ruoyi
 * @date 2022-04-28
 */
@Service
public class SignHabitServiceImpl implements ISignHabitService 
{
    @Autowired
    private SignHabitMapper signHabitMapper;

    /**
     * 查询【请填写功能名称】
     * 
     * @param habitId 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    @Override
    public SignHabit selectSignHabitById(Integer habitId)
    {
        return signHabitMapper.selectSignHabitById(habitId);
    }

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param signHabit 【请填写功能名称】
     * @return 【请填写功能名称】
     */
    @Override
    public List<SignHabit> selectSignHabitList(SignHabit signHabit)
    {
        return signHabitMapper.selectSignHabitList(signHabit);
    }

    /**
     * 新增【请填写功能名称】
     * 
     * @param signHabit 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int insertSignHabit(SignHabit signHabit)
    {
        signHabit.setCreateTime(DateUtils.getNowDate());
        return signHabitMapper.insertSignHabit(signHabit);
    }

    /**
     * 修改【请填写功能名称】
     * 
     * @param signHabit 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int updateSignHabit(SignHabit signHabit)
    {
        signHabit.setUpdateTime(DateUtils.getNowDate());
        return signHabitMapper.updateSignHabit(signHabit);
    }

    /**
     * 删除【请填写功能名称】对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteSignHabitByIds(String ids)
    {
        return signHabitMapper.deleteSignHabitByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param habitId 【请填写功能名称】ID
     * @return 结果
     */
    @Override
    public int deleteSignHabitById(Integer habitId)
    {
        return signHabitMapper.deleteSignHabitById(habitId);
    }
}
