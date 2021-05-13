package com.ruoyi.sports.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.sports.mapper.SportsRunningMapper;
import com.ruoyi.sports.domain.SportsRunning;
import com.ruoyi.sports.service.ISportsRunningService;
import com.ruoyi.common.core.text.Convert;

/**
 * 【请填写功能名称】Service业务层处理
 * 
 * @author ruoyi
 * @date 2021-05-12
 */
@Service
public class SportsRunningServiceImpl implements ISportsRunningService 
{
    @Autowired
    private SportsRunningMapper sportsRunningMapper;

    /**
     * 查询【请填写功能名称】
     * 
     * @param id 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    @Override
    public SportsRunning selectSportsRunningById(Long id)
    {
        return sportsRunningMapper.selectSportsRunningById(id);
    }

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param sportsRunning 【请填写功能名称】
     * @return 【请填写功能名称】
     */
    @Override
    public List<SportsRunning> selectSportsRunningList(SportsRunning sportsRunning)
    {
        return sportsRunningMapper.selectSportsRunningList(sportsRunning);
    }

    /**
     * 新增【请填写功能名称】
     * 
     * @param sportsRunning 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int insertSportsRunning(SportsRunning sportsRunning)
    {
        sportsRunning.setCreateTime(DateUtils.getNowDate());
        return sportsRunningMapper.insertSportsRunning(sportsRunning);
    }

    /**
     * 修改【请填写功能名称】
     * 
     * @param sportsRunning 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int updateSportsRunning(SportsRunning sportsRunning)
    {
        sportsRunning.setUpdateTime(DateUtils.getNowDate());
        return sportsRunningMapper.updateSportsRunning(sportsRunning);
    }

    /**
     * 删除【请填写功能名称】对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteSportsRunningByIds(String ids)
    {
        return sportsRunningMapper.deleteSportsRunningByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param id 【请填写功能名称】ID
     * @return 结果
     */
    @Override
    public int deleteSportsRunningById(Long id)
    {
        return sportsRunningMapper.deleteSportsRunningById(id);
    }
}
