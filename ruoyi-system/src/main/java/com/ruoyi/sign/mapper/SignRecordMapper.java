package com.ruoyi.sign.mapper;

import java.util.List;
import com.ruoyi.sign.domain.SignRecord;

/**
 * 【请填写功能名称】Mapper接口
 * 
 * @author ruoyi
 * @date 2022-04-28
 */
public interface SignRecordMapper 
{
    /**
     * 查询【请填写功能名称】
     * 
     * @param recordId 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    public SignRecord selectSignRecordById(Long recordId);

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param signRecord 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<SignRecord> selectSignRecordList(SignRecord signRecord);

    /**
     * 新增【请填写功能名称】
     * 
     * @param signRecord 【请填写功能名称】
     * @return 结果
     */
    public int insertSignRecord(SignRecord signRecord);

    /**
     * 修改【请填写功能名称】
     * 
     * @param signRecord 【请填写功能名称】
     * @return 结果
     */
    public int updateSignRecord(SignRecord signRecord);

    /**
     * 删除【请填写功能名称】
     * 
     * @param recordId 【请填写功能名称】ID
     * @return 结果
     */
    public int deleteSignRecordById(Long recordId);

    /**
     * 批量删除【请填写功能名称】
     * 
     * @param recordIds 需要删除的数据ID
     * @return 结果
     */
    public int deleteSignRecordByIds(String[] recordIds);
}
