package com.ruoyi.sports.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.sports.mapper.SportsCircleMapper;
import com.ruoyi.sports.domain.SportsCircle;
import com.ruoyi.sports.service.ISportsCircleService;
import com.ruoyi.common.core.text.Convert;

/**
 * 【请填写功能名称】Service业务层处理
 * 
 * @author ruoyi
 * @date 2021-05-13
 */
@Service
public class SportsCircleServiceImpl implements ISportsCircleService 
{
    @Autowired
    private SportsCircleMapper sportsCircleMapper;

    /**
     * 查询【请填写功能名称】
     * 
     * @param id 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    @Override
    public SportsCircle selectSportsCircleById(Long id)
    {
        return sportsCircleMapper.selectSportsCircleById(id);
    }

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param sportsCircle 【请填写功能名称】
     * @return 【请填写功能名称】
     */
    @Override
    public List<SportsCircle> selectSportsCircleList(SportsCircle sportsCircle)
    {
        return sportsCircleMapper.selectSportsCircleList(sportsCircle);
    }

    /**
     * 新增【请填写功能名称】
     * 
     * @param sportsCircle 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int insertSportsCircle(SportsCircle sportsCircle)
    {
        sportsCircle.setCreateTime(DateUtils.getNowDate());
        return sportsCircleMapper.insertSportsCircle(sportsCircle);
    }

    /**
     * 修改【请填写功能名称】
     * 
     * @param sportsCircle 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int updateSportsCircle(SportsCircle sportsCircle)
    {
        sportsCircle.setUpdateTime(DateUtils.getNowDate());
        return sportsCircleMapper.updateSportsCircle(sportsCircle);
    }

    /**
     * 删除【请填写功能名称】对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteSportsCircleByIds(String ids)
    {
        return sportsCircleMapper.deleteSportsCircleByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param id 【请填写功能名称】ID
     * @return 结果
     */
    @Override
    public int deleteSportsCircleById(Long id)
    {
        return sportsCircleMapper.deleteSportsCircleById(id);
    }
}
