package com.ruoyi.sign.mapper;

import java.util.List;
import com.ruoyi.sign.domain.SignList;

/**
 * 【请填写功能名称】Mapper接口
 * 
 * @author ruoyi
 * @date 2022-04-28
 */
public interface SignListMapper 
{
    /**
     * 查询【请填写功能名称】
     * 
     * @param signRecordId 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    public SignList selectSignListById(Long signRecordId);

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param signList 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<SignList> selectSignListList(SignList signList);

    /**
     * 新增【请填写功能名称】
     * 
     * @param signList 【请填写功能名称】
     * @return 结果
     */
    public int insertSignList(SignList signList);

    /**
     * 修改【请填写功能名称】
     * 
     * @param signList 【请填写功能名称】
     * @return 结果
     */
    public int updateSignList(SignList signList);

    /**
     * 删除【请填写功能名称】
     * 
     * @param signRecordId 【请填写功能名称】ID
     * @return 结果
     */
    public int deleteSignListById(Long signRecordId);

    /**
     * 批量删除【请填写功能名称】
     * 
     * @param signRecordIds 需要删除的数据ID
     * @return 结果
     */
    public int deleteSignListByIds(String[] signRecordIds);
}
