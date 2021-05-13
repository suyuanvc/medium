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
import com.ruoyi.sports.domain.SportsRunning;
import com.ruoyi.sports.service.ISportsRunningService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 【请填写功能名称】Controller
 * 
 * @author ruoyi
 * @date 2021-05-12
 */
@Controller
@RequestMapping("/sports/running")
public class SportsRunningController extends BaseController
{
    private String prefix = "system/running";

    @Autowired
    private ISportsRunningService sportsRunningService;

    @RequiresPermissions("system:running:view")
    @GetMapping()
    public String running()
    {
        return prefix + "/running";
    }

    /**
     * 查询【请填写功能名称】列表
     */
    @RequiresPermissions("system:running:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(SportsRunning sportsRunning)
    {
        startPage();
        List<SportsRunning> list = sportsRunningService.selectSportsRunningList(sportsRunning);
        return getDataTable(list);
    }

    /**
     * 导出【请填写功能名称】列表
     */
    @RequiresPermissions("system:running:export")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(SportsRunning sportsRunning)
    {
        List<SportsRunning> list = sportsRunningService.selectSportsRunningList(sportsRunning);
        ExcelUtil<SportsRunning> util = new ExcelUtil<SportsRunning>(SportsRunning.class);
        return util.exportExcel(list, "running");
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
    @RequiresPermissions("system:running:add")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(SportsRunning sportsRunning)
    {
        return toAjax(sportsRunningService.insertSportsRunning(sportsRunning));
    }

    /**
     * 修改【请填写功能名称】
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        SportsRunning sportsRunning = sportsRunningService.selectSportsRunningById(id);
        mmap.put("sportsRunning", sportsRunning);
        return prefix + "/edit";
    }

    /**
     * 修改保存【请填写功能名称】
     */
    @RequiresPermissions("system:running:edit")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(SportsRunning sportsRunning)
    {
        return toAjax(sportsRunningService.updateSportsRunning(sportsRunning));
    }

    /**
     * 删除【请填写功能名称】
     */
    @RequiresPermissions("system:running:remove")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(sportsRunningService.deleteSportsRunningByIds(ids));
    }
}
