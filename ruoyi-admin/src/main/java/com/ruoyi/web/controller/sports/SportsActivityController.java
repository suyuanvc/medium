package com.ruoyi.web.controller.sports;

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
import com.ruoyi.sports.domain.SportsActivity;
import com.ruoyi.sports.service.ISportsActivityService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 【请填写功能名称】Controller
 * 
 * @author ruoyi
 * @date 2021-05-13
 */
@Controller
@RequestMapping("/sports/activity")
public class SportsActivityController extends BaseController
{
    private String prefix = "sports/activity";

    @Autowired
    private ISportsActivityService sportsActivityService;

    @RequiresPermissions("sports:activity:view")
    @GetMapping()
    public String activity()
    {
        return prefix + "/activity";
    }

    /**
     * 查询【请填写功能名称】列表
     */
    @RequiresPermissions("sports:activity:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(SportsActivity sportsActivity)
    {
        startPage();
        List<SportsActivity> list = sportsActivityService.selectSportsActivityList(sportsActivity);
        return getDataTable(list);
    }

    /**
     * 导出【请填写功能名称】列表
     */
    @RequiresPermissions("sports:activity:export")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(SportsActivity sportsActivity)
    {
        List<SportsActivity> list = sportsActivityService.selectSportsActivityList(sportsActivity);
        ExcelUtil<SportsActivity> util = new ExcelUtil<SportsActivity>(SportsActivity.class);
        return util.exportExcel(list, "activity");
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
    @RequiresPermissions("sports:activity:add")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(SportsActivity sportsActivity)
    {
        return toAjax(sportsActivityService.insertSportsActivity(sportsActivity));
    }

    /**
     * 修改【请填写功能名称】
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        SportsActivity sportsActivity = sportsActivityService.selectSportsActivityById(id);
        mmap.put("sportsActivity", sportsActivity);
        return prefix + "/edit";
    }

    /**
     * 修改保存【请填写功能名称】
     */
    @RequiresPermissions("sports:activity:edit")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(SportsActivity sportsActivity)
    {
        return toAjax(sportsActivityService.updateSportsActivity(sportsActivity));
    }

    /**
     * 删除【请填写功能名称】
     */
    @RequiresPermissions("sports:activity:remove")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(sportsActivityService.deleteSportsActivityByIds(ids));
    }
}
