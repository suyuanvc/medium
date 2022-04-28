package com.ruoyi.sign.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.sign.mapper.SignListMapper;
import com.ruoyi.sign.domain.SignList;
import com.ruoyi.sign.service.ISignListService;
import com.ruoyi.common.core.text.Convert;

/**
 * 【请填写功能名称】Service业务层处理
 * 
 * @author ruoyi
 * @date 2022-04-28
 */
@Service
public class SignListServiceImpl implements ISignListService 
{
    @Autowired
    private SignListMapper signListMapper;

    /**
     * 查询【请填写功能名称】
     * 
     * @param signRecordId 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    @Override
    public SignList selectSignListById(Long signRecordId)
    {
        return signListMapper.selectSignListById(signRecordId);
    }

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param signList 【请填写功能名称】
     * @return 【请填写功能名称】
     */
    @Override
    public List<SignList> selectSignListList(SignList signList)
    {
        return signListMapper.selectSignListList(signList);
    }

    /**
     * 新增【请填写功能名称】
     * 
     * @param signList 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int insertSignList(SignList signList)
    {
        return signListMapper.insertSignList(signList);
    }

    /**
     * 修改【请填写功能名称】
     * 
     * @param signList 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int updateSignList(SignList signList)
    {
        return signListMapper.updateSignList(signList);
    }

    /**
     * 删除【请填写功能名称】对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteSignListByIds(String ids)
    {
        return signListMapper.deleteSignListByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param signRecordId 【请填写功能名称】ID
     * @return 结果
     */
    @Override
    public int deleteSignListById(Long signRecordId)
    {
        return signListMapper.deleteSignListById(signRecordId);
    }
}
