package com.ruoyi.sports.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.sports.mapper.SportsCircleMemberMapper;
import com.ruoyi.sports.domain.SportsCircleMember;
import com.ruoyi.sports.service.ISportsCircleMemberService;
import com.ruoyi.common.core.text.Convert;

/**
 * 【请填写功能名称】Service业务层处理
 * 
 * @author ruoyi
 * @date 2021-05-13
 */
@Service
public class SportsCircleMemberServiceImpl implements ISportsCircleMemberService 
{
    @Autowired
    private SportsCircleMemberMapper sportsCircleMemberMapper;

    /**
     * 查询【请填写功能名称】
     * 
     * @param id 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    @Override
    public SportsCircleMember selectSportsCircleMemberById(Long id)
    {
        return sportsCircleMemberMapper.selectSportsCircleMemberById(id);
    }

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param sportsCircleMember 【请填写功能名称】
     * @return 【请填写功能名称】
     */
    @Override
    public List<SportsCircleMember> selectSportsCircleMemberList(SportsCircleMember sportsCircleMember)
    {
        return sportsCircleMemberMapper.selectSportsCircleMemberList(sportsCircleMember);
    }

    /**
     * 新增【请填写功能名称】
     * 
     * @param sportsCircleMember 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int insertSportsCircleMember(SportsCircleMember sportsCircleMember)
    {
        return sportsCircleMemberMapper.insertSportsCircleMember(sportsCircleMember);
    }

    /**
     * 修改【请填写功能名称】
     * 
     * @param sportsCircleMember 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int updateSportsCircleMember(SportsCircleMember sportsCircleMember)
    {
        sportsCircleMember.setUpdateTime(DateUtils.getNowDate());
        return sportsCircleMemberMapper.updateSportsCircleMember(sportsCircleMember);
    }

    /**
     * 删除【请填写功能名称】对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteSportsCircleMemberByIds(String ids)
    {
        return sportsCircleMemberMapper.deleteSportsCircleMemberByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param id 【请填写功能名称】ID
     * @return 结果
     */
    @Override
    public int deleteSportsCircleMemberById(Long id)
    {
        return sportsCircleMemberMapper.deleteSportsCircleMemberById(id);
    }
}
