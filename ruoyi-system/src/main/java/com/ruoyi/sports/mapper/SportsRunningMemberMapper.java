package com.ruoyi.sports.mapper;

import java.util.List;
import com.ruoyi.sports.domain.SportsRunningMember;

/**
 * 【请填写功能名称】Mapper接口
 * 
 * @author ruoyi
 * @date 2021-05-13
 */
public interface SportsRunningMemberMapper 
{
    /**
     * 查询【请填写功能名称】
     * 
     * @param id 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    public SportsRunningMember selectSportsRunningMemberById(Long id);

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param sportsRunningMember 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<SportsRunningMember> selectSportsRunningMemberList(SportsRunningMember sportsRunningMember);

    /**
     * 新增【请填写功能名称】
     * 
     * @param sportsRunningMember 【请填写功能名称】
     * @return 结果
     */
    public int insertSportsRunningMember(SportsRunningMember sportsRunningMember);

    /**
     * 修改【请填写功能名称】
     * 
     * @param sportsRunningMember 【请填写功能名称】
     * @return 结果
     */
    public int updateSportsRunningMember(SportsRunningMember sportsRunningMember);

    /**
     * 删除【请填写功能名称】
     * 
     * @param id 【请填写功能名称】ID
     * @return 结果
     */
    public int deleteSportsRunningMemberById(Long id);

    /**
     * 批量删除【请填写功能名称】
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteSportsRunningMemberByIds(String[] ids);
}
