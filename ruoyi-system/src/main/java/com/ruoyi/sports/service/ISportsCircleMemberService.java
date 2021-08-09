package com.ruoyi.sports.service;

import java.util.List;
import com.ruoyi.sports.domain.SportsCircleMember;

/**
 * 【请填写功能名称】Service接口
 * 
 * @author ruoyi
 * @date 2021-05-13
 */
public interface ISportsCircleMemberService 
{
    /**
     * 查询【请填写功能名称】
     * 
     * @param id 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    public SportsCircleMember selectSportsCircleMemberById(Long id);

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param sportsCircleMember 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<SportsCircleMember> selectSportsCircleMemberList(SportsCircleMember sportsCircleMember);

    /**
     * 新增【请填写功能名称】
     * 
     * @param sportsCircleMember 【请填写功能名称】
     * @return 结果
     */
    public int insertSportsCircleMember(SportsCircleMember sportsCircleMember);

    /**
     * 修改【请填写功能名称】
     * 
     * @param sportsCircleMember 【请填写功能名称】
     * @return 结果
     */
    public int updateSportsCircleMember(SportsCircleMember sportsCircleMember);

    /**
     * 批量删除【请填写功能名称】
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteSportsCircleMemberByIds(String ids);

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param id 【请填写功能名称】ID
     * @return 结果
     */
    public int deleteSportsCircleMemberById(Long id);
}
