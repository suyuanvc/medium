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
import com.ruoyi.study.domain.StudyMain;
import com.ruoyi.study.service.IStudyMainService;
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
@RequestMapping("/study/main")
public class StudyMainController extends BaseController
{
    private String prefix = "study/main";

    @Autowired
    private IStudyMainService studyMainService;

    @RequiresPermissions("study:main:view")
    @GetMapping()
    public String main()
    {
        return prefix + "/main";
    }

    /**
     * 查询【请填写功能名称】列表
     */
    @RequiresPermissions("study:main:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(StudyMain studyMain)
    {
        startPage();
        studyMain.setType("2");
        List<StudyMain> list = studyMainService.selectStudyMainList(studyMain);
        return getDataTable(list);
    }

    /**
     * 导出【请填写功能名称】列表
     */
    @RequiresPermissions("study:main:export")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(StudyMain studyMain)
    {
        List<StudyMain> list = studyMainService.selectStudyMainList(studyMain);
        ExcelUtil<StudyMain> util = new ExcelUtil<StudyMain>(StudyMain.class);
        return util.exportExcel(list, "main");
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
    @RequiresPermissions("study:main:add")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(StudyMain studyMain)
    {
        return toAjax(studyMainService.insertStudyMain(studyMain));
    }

    /**
     * 修改【请填写功能名称】
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        StudyMain studyMain = studyMainService.selectStudyMainById(id);
        mmap.put("studyMain", studyMain);
        return prefix + "/edit";
    }

    /**
     * 修改保存【请填写功能名称】
     */
    @RequiresPermissions("study:main:edit")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(StudyMain studyMain)
    {
        return toAjax(studyMainService.updateStudyMain(studyMain));
    }

    /**
     * 删除【请填写功能名称】
     */
    @RequiresPermissions("study:main:remove")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(studyMainService.deleteStudyMainByIds(ids));
    }
}
