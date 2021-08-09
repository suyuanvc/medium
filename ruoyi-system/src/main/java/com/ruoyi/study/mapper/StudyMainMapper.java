package com.ruoyi.study.mapper;

import java.util.List;
import com.ruoyi.study.domain.StudyMain;

/**
 * 【请填写功能名称】Mapper接口
 * 
 * @author ruoyi
 * @date 2021-08-01
 */
public interface StudyMainMapper 
{
    /**
     * 查询【请填写功能名称】
     * 
     * @param id 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    public StudyMain selectStudyMainById(Long id);

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param studyMain 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<StudyMain> selectStudyMainList(StudyMain studyMain);

    /**
     * 新增【请填写功能名称】
     * 
     * @param studyMain 【请填写功能名称】
     * @return 结果
     */
    public int insertStudyMain(StudyMain studyMain);

    /**
     * 修改【请填写功能名称】
     * 
     * @param studyMain 【请填写功能名称】
     * @return 结果
     */
    public int updateStudyMain(StudyMain studyMain);

    /**
     * 删除【请填写功能名称】
     * 
     * @param id 【请填写功能名称】ID
     * @return 结果
     */
    public int deleteStudyMainById(Long id);

    /**
     * 批量删除【请填写功能名称】
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteStudyMainByIds(String[] ids);
}
