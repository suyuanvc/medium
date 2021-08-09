package com.ruoyi.sports.mapper;

import java.util.List;
import com.ruoyi.sports.domain.SportsActivity;

/**
 * 【请填写功能名称】Mapper接口
 * 
 * @author ruoyi
 * @date 2021-05-13
 */
public interface SportsActivityMapper 
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
     * 删除【请填写功能名称】
     * 
     * @param id 【请填写功能名称】ID
     * @return 结果
     */
    public int deleteSportsActivityById(Long id);

    /**
     * 批量删除【请填写功能名称】
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteSportsActivityByIds(String[] ids);
}
