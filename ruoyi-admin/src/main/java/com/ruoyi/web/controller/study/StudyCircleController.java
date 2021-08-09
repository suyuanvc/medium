package com.ruoyi.web.controller.study;

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
import com.ruoyi.study.domain.StudyCircle;
import com.ruoyi.study.service.IStudyCircleService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 【请填写功能名称】Controller
 * 
 * @author ruoyi
 * @date 2021-08-01
 */
@Controller
@RequestMapping("/study/circle")
public class StudyCircleController extends BaseController
{
    private String prefix = "study/circle";

    @Autowired
    private IStudyCircleService studyCircleService;

    @RequiresPermissions("study:circle:view")
    @GetMapping()
    public String circle()
    {
        return prefix + "/circle";
    }

    /**
     * 查询【请填写功能名称】列表
     */
    @RequiresPermissions("study:circle:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(StudyCircle studyCircle)
    {
        startPage();
        List<StudyCircle> list = studyCircleService.selectStudyCircleList(studyCircle);
        return getDataTable(list);
    }

    /**
     * 导出【请填写功能名称】列表
     */
    @RequiresPermissions("study:circle:export")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(StudyCircle studyCircle)
    {
        List<StudyCircle> list = studyCircleService.selectStudyCircleList(studyCircle);
        ExcelUtil<StudyCircle> util = new ExcelUtil<StudyCircle>(StudyCircle.class);
        return util.exportExcel(list, "circle");
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
    @RequiresPermissions("study:circle:add")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(StudyCircle studyCircle)
    {
        return toAjax(studyCircleService.insertStudyCircle(studyCircle));
    }

    /**
     * 修改【请填写功能名称】
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        StudyCircle studyCircle = studyCircleService.selectStudyCircleById(id);
        mmap.put("studyCircle", studyCircle);
        return prefix + "/edit";
    }

    /**
     * 修改保存【请填写功能名称】
     */
    @RequiresPermissions("study:circle:edit")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(StudyCircle studyCircle)
    {
        return toAjax(studyCircleService.updateStudyCircle(studyCircle));
    }

    /**
     * 删除【请填写功能名称】
     */
    @RequiresPermissions("study:circle:remove")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(studyCircleService.deleteStudyCircleByIds(ids));
    }
}
