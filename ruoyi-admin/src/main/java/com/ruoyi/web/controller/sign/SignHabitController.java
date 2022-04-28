package com.ruoyi.web.controller.sign;

import java.util.List;
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
import com.ruoyi.sign.domain.SignHabit;
import com.ruoyi.sign.service.ISignHabitService;
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
@RequestMapping("/sign/habit")
public class SignHabitController extends BaseController
{
    private String prefix = "sign/habit";

    @Autowired
    private ISignHabitService signHabitService;

    @RequiresPermissions("sign:habit:view")
    @GetMapping()
    public String habit()
    {
        return prefix + "/habit";
    }

    /**
     * 查询【请填写功能名称】列表
     */
    @RequiresPermissions("sign:habit:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(SignHabit signHabit)
    {
        startPage();
        List<SignHabit> list = signHabitService.selectSignHabitList(signHabit);
        return getDataTable(list);
    }

    /**
     * 导出【请填写功能名称】列表
     */
    @RequiresPermissions("sign:habit:export")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(SignHabit signHabit)
    {
        List<SignHabit> list = signHabitService.selectSignHabitList(signHabit);
        ExcelUtil<SignHabit> util = new ExcelUtil<SignHabit>(SignHabit.class);
        return util.exportExcel(list, "habit");
    }

    /**
     * 新增【请填写功能名称】
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存【请填写功能名称】
     */
    @RequiresPermissions("sign:habit:add")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(SignHabit signHabit)
    {
        return toAjax(signHabitService.insertSignHabit(signHabit));
    }

    /**
     * 修改【请填写功能名称】
     */
    @GetMapping("/edit/{habitId}")
    public String edit(@PathVariable("habitId") Integer habitId, ModelMap mmap)
    {
        SignHabit signHabit = signHabitService.selectSignHabitById(habitId);
        mmap.put("signHabit", signHabit);
        return prefix + "/edit";
    }

    /**
     * 修改保存【请填写功能名称】
     */
    @RequiresPermissions("sign:habit:edit")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(SignHabit signHabit)
    {
        return toAjax(signHabitService.updateSignHabit(signHabit));
    }

    /**
     * 删除【请填写功能名称】
     */
    @RequiresPermissions("sign:habit:remove")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(signHabitService.deleteSignHabitByIds(ids));
    }
}
