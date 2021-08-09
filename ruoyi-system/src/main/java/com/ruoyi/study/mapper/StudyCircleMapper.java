package com.ruoyi.study.mapper;

import java.util.List;
import com.ruoyi.study.domain.StudyCircle;

/**
 * 【请填写功能名称】Mapper接口
 * 
 * @author ruoyi
 * @date 2021-08-01
 */
public interface StudyCircleMapper 
{
    /**
     * 查询【请填写功能名称】
     * 
     * @param id 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    public StudyCircle selectStudyCircleById(Long id);

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param studyCircle 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<StudyCircle> selectStudyCircleList(StudyCircle studyCircle);

    /**
     * 新增【请填写功能名称】
     * 
     * @param studyCircle 【请填写功能名称】
     * @return 结果
     */
    public int insertStudyCircle(StudyCircle studyCircle);

    /**
     * 修改【请填写功能名称】
     * 
     * @param studyCircle 【请填写功能名称】
     * @return 结果
     */
    public int updateStudyCircle(StudyCircle studyCircle);

    /**
     * 删除【请填写功能名称】
     * 
     * @param id 【请填写功能名称】ID
     * @return 结果
     */
    public int deleteStudyCircleById(Long id);

    /**
     * 批量删除【请填写功能名称】
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteStudyCircleByIds(String[] ids);
}
