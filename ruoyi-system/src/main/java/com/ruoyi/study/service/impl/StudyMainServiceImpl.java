package com.ruoyi.study.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.study.mapper.StudyMainMapper;
import com.ruoyi.study.domain.StudyMain;
import com.ruoyi.study.service.IStudyMainService;
import com.ruoyi.common.core.text.Convert;

/**
 * 【请填写功能名称】Service业务层处理
 * 
 * @author ruoyi
 * @date 2021-08-01
 */
@Service
public class StudyMainServiceImpl implements IStudyMainService 
{
    @Autowired
    private StudyMainMapper studyMainMapper;

    /**
     * 查询【请填写功能名称】
     * 
     * @param id 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    @Override
    public StudyMain selectStudyMainById(Long id)
    {
        return studyMainMapper.selectStudyMainById(id);
    }

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param studyMain 【请填写功能名称】
     * @return 【请填写功能名称】
     */
    @Override
    public List<StudyMain> selectStudyMainList(StudyMain studyMain)
    {
        return studyMainMapper.selectStudyMainList(studyMain);
    }

    /**
     * 新增【请填写功能名称】
     * 
     * @param studyMain 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int insertStudyMain(StudyMain studyMain)
    {
        studyMain.setCreateTime(DateUtils.getNowDate());
        return studyMainMapper.insertStudyMain(studyMain);
    }

    /**
     * 修改【请填写功能名称】
     * 
     * @param studyMain 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int updateStudyMain(StudyMain studyMain)
    {
        studyMain.setUpdateTime(DateUtils.getNowDate());
        return studyMainMapper.updateStudyMain(studyMain);
    }

    /**
     * 删除【请填写功能名称】对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteStudyMainByIds(String ids)
    {
        return studyMainMapper.deleteStudyMainByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param id 【请填写功能名称】ID
     * @return 结果
     */
    @Override
    public int deleteStudyMainById(Long id)
    {
        return studyMainMapper.deleteStudyMainById(id);
    }
}
