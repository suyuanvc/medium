package com.ruoyi.sports.mapper;

import java.util.List;
import com.ruoyi.sports.domain.SportsCircle;

/**
 * 【请填写功能名称】Mapper接口
 * 
 * @author ruoyi
 * @date 2021-05-13
 */
public interface SportsCircleMapper 
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
     * 删除【请填写功能名称】
     * 
     * @param id 【请填写功能名称】ID
     * @return 结果
     */
    public int deleteSportsCircleById(Long id);

    /**
     * 批量删除【请填写功能名称】
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteSportsCircleByIds(String[] ids);
}
