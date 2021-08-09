package com.ruoyi.sports.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.sports.mapper.SportsActivityMapper;
import com.ruoyi.sports.domain.SportsActivity;
import com.ruoyi.sports.service.ISportsActivityService;
import com.ruoyi.common.core.text.Convert;

/**
 * 【请填写功能名称】Service业务层处理
 * 
 * @author ruoyi
 * @date 2021-05-13
 */
@Service
public class SportsActivityServiceImpl implements ISportsActivityService 
{
    @Autowired
    private SportsActivityMapper sportsActivityMapper;

    /**
     * 查询【请填写功能名称】
     * 
     * @param id 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    @Override
    public SportsActivity selectSportsActivityById(Long id)
    {
        return sportsActivityMapper.selectSportsActivityById(id);
    }

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param sportsActivity 【请填写功能名称】
     * @return 【请填写功能名称】
     */
    @Override
    public List<SportsActivity> selectSportsActivityList(SportsActivity sportsActivity)
    {
        return sportsActivityMapper.selectSportsActivityList(sportsActivity);
    }

    /**
     * 新增【请填写功能名称】
     * 
     * @param sportsActivity 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int insertSportsActivity(SportsActivity sportsActivity)
    {
        sportsActivity.setCreateTime(DateUtils.getNowDate());
        return sportsActivityMapper.insertSportsActivity(sportsActivity);
    }

    /**
     * 修改【请填写功能名称】
     * 
     * @param sportsActivity 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int updateSportsActivity(SportsActivity sportsActivity)
    {
        sportsActivity.setUpdateTime(DateUtils.getNowDate());
        return sportsActivityMapper.updateSportsActivity(sportsActivity);
    }

    /**
     * 删除【请填写功能名称】对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteSportsActivityByIds(String ids)
    {
        return sportsActivityMapper.deleteSportsActivityByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param id 【请填写功能名称】ID
     * @return 结果
     */
    @Override
    public int deleteSportsActivityById(Long id)
    {
        return sportsActivityMapper.deleteSportsActivityById(id);
    }
}
