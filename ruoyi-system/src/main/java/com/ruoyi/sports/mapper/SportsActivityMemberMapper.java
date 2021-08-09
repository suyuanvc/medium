package com.ruoyi.sports.mapper;

import java.util.List;
import com.ruoyi.sports.domain.SportsActivityMember;

/**
 * 【请填写功能名称】Mapper接口
 * 
 * @author ruoyi
 * @date 2021-05-13
 */
public interface SportsActivityMemberMapper 
{
    /**
     * 查询【请填写功能名称】
     * 
     * @param id 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    public SportsActivityMember selectSportsActivityMemberById(Long id);

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param sportsActivityMember 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<SportsActivityMember> selectSportsActivityMemberList(SportsActivityMember sportsActivityMember);

    /**
     * 新增【请填写功能名称】
     * 
     * @param sportsActivityMember 【请填写功能名称】
     * @return 结果
     */
    public int insertSportsActivityMember(SportsActivityMember sportsActivityMember);

    /**
     * 修改【请填写功能名称】
     * 
     * @param sportsActivityMember 【请填写功能名称】
     * @return 结果
     */
    public int updateSportsActivityMember(SportsActivityMember sportsActivityMember);

    /**
     * 删除【请填写功能名称】
     * 
     * @param id 【请填写功能名称】ID
     * @return 结果
     */
    public int deleteSportsActivityMemberById(Long id);

    /**
     * 批量删除【请填写功能名称】
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteSportsActivityMemberByIds(String[] ids);
}
