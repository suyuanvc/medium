package com.ruoyi.sign.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.sign.mapper.SignRecordMapper;
import com.ruoyi.sign.domain.SignRecord;
import com.ruoyi.sign.service.ISignRecordService;
import com.ruoyi.common.core.text.Convert;

/**
 * 【请填写功能名称】Service业务层处理
 * 
 * @author ruoyi
 * @date 2022-04-28
 */
@Service
public class SignRecordServiceImpl implements ISignRecordService 
{
    @Autowired
    private SignRecordMapper signRecordMapper;

    /**
     * 查询【请填写功能名称】
     * 
     * @param recordId 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    @Override
    public SignRecord selectSignRecordById(Long recordId)
    {
        return signRecordMapper.selectSignRecordById(recordId);
    }

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param signRecord 【请填写功能名称】
     * @return 【请填写功能名称】
     */
    @Override
    public List<SignRecord> selectSignRecordList(SignRecord signRecord)
    {
        return signRecordMapper.selectSignRecordList(signRecord);
    }

    /**
     * 新增【请填写功能名称】
     * 
     * @param signRecord 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int insertSignRecord(SignRecord signRecord)
    {
        return signRecordMapper.insertSignRecord(signRecord);
    }

    /**
     * 修改【请填写功能名称】
     * 
     * @param signRecord 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int updateSignRecord(SignRecord signRecord)
    {
        return signRecordMapper.updateSignRecord(signRecord);
    }

    /**
     * 删除【请填写功能名称】对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteSignRecordByIds(String ids)
    {
        return signRecordMapper.deleteSignRecordByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param recordId 【请填写功能名称】ID
     * @return 结果
     */
    @Override
    public int deleteSignRecordById(Long recordId)
    {
        return signRecordMapper.deleteSignRecordById(recordId);
    }
}
