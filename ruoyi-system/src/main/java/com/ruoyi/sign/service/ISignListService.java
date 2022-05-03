package com.ruoyi.sign.service;

import java.util.List;
import com.ruoyi.sign.domain.SignList;
import com.ruoyi.sign.vo.StatisticsHabitVo;

/**
 * 【请填写功能名称】Service接口
 * 
 * @author ruoyi
 * @date 2022-04-28
 */
public interface ISignListService 
{
    /**
     * 查询【请填写功能名称】
     * 
     * @param signRecordId 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    public SignList selectSignListById(Long signRecordId);

    /**
     * 统计各习惯签到打卡时长
     *
     */
    public List<StatisticsHabitVo> selectTimesByStatictics(SignList signList);

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param signList 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<SignList> selectSignListList(SignList signList);

    /**
     * 新增【请填写功能名称】
     * 
     * @param signList 【请填写功能名称】
     * @return 结果
     */
    public int insertSignList(SignList signList);

    /**
     * 修改【请填写功能名称】
     * 
     * @param signList 【请填写功能名称】
     * @return 结果
     */
    public int updateSignList(SignList signList);

    /**
     * 批量删除【请填写功能名称】
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteSignListByIds(String ids);

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param signRecordId 【请填写功能名称】ID
     * @return 结果
     */
    public int deleteSignListById(Long signRecordId);
}
