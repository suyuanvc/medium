package com.ruoyi.sports.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.sports.mapper.SportsRunningMemberMapper;
import com.ruoyi.sports.domain.SportsRunningMember;
import com.ruoyi.sports.service.ISportsRunningMemberService;
import com.ruoyi.common.core.text.Convert;

/**
 * 【请填写功能名称】Service业务层处理
 * 
 * @author ruoyi
 * @date 2021-05-13
 */
@Service
public class SportsRunningMemberServiceImpl implements ISportsRunningMemberService 
{
    @Autowired
    private SportsRunningMemberMapper sportsRunningMemberMapper;

    /**
     * 查询【请填写功能名称】
     * 
     * @param id 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    @Override
    public SportsRunningMember selectSportsRunningMemberById(Long id)
    {
        return sportsRunningMemberMapper.selectSportsRunningMemberById(id);
    }

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param sportsRunningMember 【请填写功能名称】
     * @return 【请填写功能名称】
     */
    @Override
    public List<SportsRunningMember> selectSportsRunningMemberList(SportsRunningMember sportsRunningMember)
    {
        return sportsRunningMemberMapper.selectSportsRunningMemberList(sportsRunningMember);
    }

    /**
     * 新增【请填写功能名称】
     * 
     * @param sportsRunningMember 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int insertSportsRunningMember(SportsRunningMember sportsRunningMember)
    {
        sportsRunningMember.setCreateTime(DateUtils.getNowDate());
        return sportsRunningMemberMapper.insertSportsRunningMember(sportsRunningMember);
    }

    /**
     * 修改【请填写功能名称】
     * 
     * @param sportsRunningMember 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int updateSportsRunningMember(SportsRunningMember sportsRunningMember)
    {
        sportsRunningMember.setUpdateTime(DateUtils.getNowDate());
        return sportsRunningMemberMapper.updateSportsRunningMember(sportsRunningMember);
    }

    /**
     * 删除【请填写功能名称】对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteSportsRunningMemberByIds(String ids)
    {
        return sportsRunningMemberMapper.deleteSportsRunningMemberByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param id 【请填写功能名称】ID
     * @return 结果
     */
    @Override
    public int deleteSportsRunningMemberById(Long id)
    {
        return sportsRunningMemberMapper.deleteSportsRunningMemberById(id);
    }
}
