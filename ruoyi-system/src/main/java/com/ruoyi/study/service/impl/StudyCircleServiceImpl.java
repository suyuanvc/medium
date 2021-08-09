package com.ruoyi.study.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.study.mapper.StudyCircleMapper;
import com.ruoyi.study.domain.StudyCircle;
import com.ruoyi.study.service.IStudyCircleService;
import com.ruoyi.common.core.text.Convert;

/**
 * 【请填写功能名称】Service业务层处理
 * 
 * @author ruoyi
 * @date 2021-08-01
 */
@Service
public class StudyCircleServiceImpl implements IStudyCircleService 
{
    @Autowired
    private StudyCircleMapper studyCircleMapper;

    /**
     * 查询【请填写功能名称】
     * 
     * @param id 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    @Override
    public StudyCircle selectStudyCircleById(Long id)
    {
        return studyCircleMapper.selectStudyCircleById(id);
    }

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param studyCircle 【请填写功能名称】
     * @return 【请填写功能名称】
     */
    @Override
    public List<StudyCircle> selectStudyCircleList(StudyCircle studyCircle)
    {
        return studyCircleMapper.selectStudyCircleList(studyCircle);
    }

    /**
     * 新增【请填写功能名称】
     * 
     * @param studyCircle 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int insertStudyCircle(StudyCircle studyCircle)
    {
        studyCircle.setCreateTime(DateUtils.getNowDate());
        return studyCircleMapper.insertStudyCircle(studyCircle);
    }

    /**
     * 修改【请填写功能名称】
     * 
     * @param studyCircle 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int updateStudyCircle(StudyCircle studyCircle)
    {
        studyCircle.setUpdateTime(DateUtils.getNowDate());
        return studyCircleMapper.updateStudyCircle(studyCircle);
    }

    /**
     * 删除【请填写功能名称】对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteStudyCircleByIds(String ids)
    {
        return studyCircleMapper.deleteStudyCircleByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param id 【请填写功能名称】ID
     * @return 结果
     */
    @Override
    public int deleteStudyCircleById(Long id)
    {
        return studyCircleMapper.deleteStudyCircleById(id);
    }
}
