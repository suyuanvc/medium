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
import com.ruoyi.sports.domain.SportsCircle;
import com.ruoyi.sports.service.ISportsCircleService;
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
@RequestMapping("/sports/circle")
public class SportsCircleController extends BaseController
{
    private String prefix = "sports/circle";

    @Autowired
    private ISportsCircleService sportsCircleService;

    @RequiresPermissions("sports:circle:view")
    @GetMapping()
    public String circle()
    {
        return prefix + "/circle";
    }

    /**
     * 查询【请填写功能名称】列表
     */
    @RequiresPermissions("sports:circle:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(SportsCircle sportsCircle)
    {
        startPage();
        List<SportsCircle> list = sportsCircleService.selectSportsCircleList(sportsCircle);
        return getDataTable(list);
    }

    /**
     * 导出【请填写功能名称】列表
     */
    @RequiresPermissions("sports:circle:export")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(SportsCircle sportsCircle)
    {
        List<SportsCircle> list = sportsCircleService.selectSportsCircleList(sportsCircle);
        ExcelUtil<SportsCircle> util = new ExcelUtil<SportsCircle>(SportsCircle.class);
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
    @RequiresPermissions("sports:circle:add")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(SportsCircle sportsCircle)
    {
        return toAjax(sportsCircleService.insertSportsCircle(sportsCircle));
    }

    /**
     * 修改【请填写功能名称】
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        SportsCircle sportsCircle = sportsCircleService.selectSportsCircleById(id);
        mmap.put("sportsCircle", sportsCircle);
        return prefix + "/edit";
    }

    /**
     * 修改保存【请填写功能名称】
     */
    @RequiresPermissions("sports:circle:edit")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(SportsCircle sportsCircle)
    {
        return toAjax(sportsCircleService.updateSportsCircle(sportsCircle));
    }

    /**
     * 删除【请填写功能名称】
     */
    @RequiresPermissions("sports:circle:remove")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(sportsCircleService.deleteSportsCircleByIds(ids));
    }
}
