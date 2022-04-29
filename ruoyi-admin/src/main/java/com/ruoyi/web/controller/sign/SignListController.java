package com.ruoyi.web.controller.sign;

import java.util.List;

import com.ruoyi.sign.domain.SignHabit;
import com.ruoyi.sign.service.ISignHabitService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.sign.domain.SignList;
import com.ruoyi.sign.service.ISignListService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 【请填写功能名称】Controller
 * 
 * @author ruoyi
 * @date 2022-04-28
 */
@Controller
@RequestMapping("/sign/list")
public class SignListController extends BaseController
{
    private String prefix = "sign/list";

    @Autowired
    private ISignListService signListService;

    @Autowired
    private ISignHabitService signHabitService;

    @GetMapping("/list/{recordId}")
    public String list(@PathVariable("recordId") Long recordId,ModelMap mmap)
    {
        mmap.put("recordId", recordId);
        return prefix + "/list";
    }

    /**
     * 查询【请填写功能名称】列表
     */
    @RequiresPermissions("system:list:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(SignList signList)
    {
        startPage();
        List<SignList> list = signListService.selectSignListList(signList);
        return getDataTable(list);
    }

    /**
     * 导出【请填写功能名称】列表
     */
    @RequiresPermissions("system:list:export")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(SignList signList)
    {
        List<SignList> list = signListService.selectSignListList(signList);
        ExcelUtil<SignList> util = new ExcelUtil<SignList>(SignList.class);
        return util.exportExcel(list, "list");
    }

    /**
     * 新增【请填写功能名称】
     */
    @GetMapping("/add/{recordId}")
    public String add(@PathVariable("recordId") Long recordId,ModelMap mmap)
    {
        // 查询所有热门习惯
        List<SignHabit> list = signHabitService.selectSignHabitList(null);
        mmap.put("recordId",recordId);
        mmap.put("list",list);
        return prefix + "/add";
    }

    /**
     * 新增保存【请填写功能名称】
     */
    @RequiresPermissions("system:list:add")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(SignList signList)
    {
        return toAjax(signListService.insertSignList(signList));
    }

    /**
     * 修改【请填写功能名称】
     */
    @GetMapping("/edit/{signRecordId}")
    public String edit(@PathVariable("signRecordId") Long signRecordId, ModelMap mmap)
    {
        SignList signList = signListService.selectSignListById(signRecordId);
        mmap.put("signList", signList);
        return prefix + "/edit";
    }

    /**
     * 修改保存【请填写功能名称】
     */
    @RequiresPermissions("system:list:edit")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(SignList signList)
    {
        return toAjax(signListService.updateSignList(signList));
    }

    /**
     * 删除【请填写功能名称】
     */
    @RequiresPermissions("system:list:remove")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(signListService.deleteSignListByIds(ids));
    }
}
