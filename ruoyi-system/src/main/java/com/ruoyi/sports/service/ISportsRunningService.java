package com.ruoyi.sports.service;

import java.util.List;
import com.ruoyi.sports.domain.SportsRunning;

/**
 * 【请填写功能名称】Service接口
 * 
 * @author ruoyi
 * @date 2021-05-12
 */
public interface ISportsRunningService 
{
    /**
     * 查询【请填写功能名称】
     * 
     * @param id 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    public SportsRunning selectSportsRunningById(Long id);

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param sportsRunning 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<SportsRunning> selectSportsRunningList(SportsRunning sportsRunning);

    /**
     * 新增【请填写功能名称】
     * 
     * @param sportsRunning 【请填写功能名称】
     * @return 结果
     */
    public int insertSportsRunning(SportsRunning sportsRunning);

    /**
     * 修改【请填写功能名称】
     * 
     * @param sportsRunning 【请填写功能名称】
     * @return 结果
     */
    public int updateSportsRunning(SportsRunning sportsRunning);

    /**
     * 批量删除【请填写功能名称】
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteSportsRunningByIds(String ids);

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param id 【请填写功能名称】ID
     * @return 结果
     */
    public int deleteSportsRunningById(Long id);
}
