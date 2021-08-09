package com.ruoyi.sports.service;

import java.util.List;
import com.ruoyi.sports.domain.SportsCircle;

/**
 * 【请填写功能名称】Service接口
 * 
 * @author ruoyi
 * @date 2021-05-13
 */
public interface ISportsCircleService 
{
    /**
     * 查询【请填写功能名称】
     * 
     * @param id 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    public SportsCircle selectSportsCircleById(Long id);

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param sportsCircle 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<SportsCircle> selectSportsCircleList(SportsCircle sportsCircle);

    /**
     * 新增【请填写功能名称】
     * 
     * @param sportsCircle 【请填写功能名称】
     * @return 结果
     */
    public int insertSportsCircle(SportsCircle sportsCircle);

    /**
     * 修改【请填写功能名称】
     * 
     * @param sportsCircle 【请填写功能名称】
     * @return 结果
     */
    public int updateSportsCircle(SportsCircle sportsCircle);

    /**
     * 批量删除【请填写功能名称】
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteSportsCircleByIds(String ids);

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param id 【请填写功能名称】ID
     * @return 结果
     */
    public int deleteSportsCircleById(Long id);
}
