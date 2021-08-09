package com.ruoyi.sports.service;

import java.util.List;
import com.ruoyi.sports.domain.SportsActivity;

/**
 * 【请填写功能名称】Service接口
 * 
 * @author ruoyi
 * @date 2021-05-13
 */
public interface ISportsActivityService 
{
    /**
     * 查询【请填写功能名称】
     * 
     * @param id 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    public SportsActivity selectSportsActivityById(Long id);

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param sportsActivity 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<SportsActivity> selectSportsActivityList(SportsActivity sportsActivity);

    /**
     * 新增【请填写功能名称】
     * 
     * @param sportsActivity 【请填写功能名称】
     * @return 结果
     */
    public int insertSportsActivity(SportsActivity sportsActivity);

    /**
     * 修改【请填写功能名称】
     * 
     * @param sportsActivity 【请填写功能名称】
     * @return 结果
     */
    public int updateSportsActivity(SportsActivity sportsActivity);

    /**
     * 批量删除【请填写功能名称】
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteSportsActivityByIds(String ids);

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param id 【请填写功能名称】ID
     * @return 结果
     */
    public int deleteSportsActivityById(Long id);
}
