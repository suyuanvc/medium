package com.ruoyi.sports.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.sports.mapper.SportsActivityMemberMapper;
import com.ruoyi.sports.domain.SportsActivityMember;
import com.ruoyi.sports.service.ISportsActivityMemberService;
import com.ruoyi.common.core.text.Convert;

/**
 * 【请填写功能名称】Service业务层处理
 * 
 * @author ruoyi
 * @date 2021-05-13
 */
@Service
public class SportsActivityMemberServiceImpl implements ISportsActivityMemberService 
{
    @Autowired
    private SportsActivityMemberMapper sportsActivityMemberMapper;

    /**
     * 查询【请填写功能名称】
     * 
     * @param id 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    @Override
    public SportsActivityMember selectSportsActivityMemberById(Long id)
    {
        return sportsActivityMemberMapper.selectSportsActivityMemberById(id);
    }

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param sportsActivityMember 【请填写功能名称】
     * @return 【请填写功能名称】
     */
    @Override
    public List<SportsActivityMember> selectSportsActivityMemberList(SportsActivityMember sportsActivityMember)
    {
        return sportsActivityMemberMapper.selectSportsActivityMemberList(sportsActivityMember);
    }

    /**
     * 新增【请填写功能名称】
     * 
     * @param sportsActivityMember 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int insertSportsActivityMember(SportsActivityMember sportsActivityMember)
    {
        return sportsActivityMemberMapper.insertSportsActivityMember(sportsActivityMember);
    }

    /**
     * 修改【请填写功能名称】
     * 
     * @param sportsActivityMember 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int updateSportsActivityMember(SportsActivityMember sportsActivityMember)
    {
        sportsActivityMember.setUpdateTime(DateUtils.getNowDate());
        return sportsActivityMemberMapper.updateSportsActivityMember(sportsActivityMember);
    }

    /**
     * 删除【请填写功能名称】对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteSportsActivityMemberByIds(String ids)
    {
        return sportsActivityMemberMapper.deleteSportsActivityMemberByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param id 【请填写功能名称】ID
     * @return 结果
     */
    @Override
    public int deleteSportsActivityMemberById(Long id)
    {
        return sportsActivityMemberMapper.deleteSportsActivityMemberById(id);
    }
}
