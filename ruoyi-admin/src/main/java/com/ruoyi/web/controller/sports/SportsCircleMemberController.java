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
import com.ruoyi.sports.domain.SportsCircleMember;
import com.ruoyi.sports.service.ISportsCircleMemberService;
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
@RequestMapping("/sports/circle/member")
public class SportsCircleMemberController extends BaseController
{
    private String prefix = "sports/circleMember";

    @Autowired
    private ISportsCircleMemberService sportsCircleMemberService;

    @RequiresPermissions("sports:member:view")
    @GetMapping()
    public String member()
    {
        return prefix + "/member";
    }

    /**
     * 查询【请填写功能名称】列表
     */
    @RequiresPermissions("sports:member:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(SportsCircleMember sportsCircleMember)
    {
        startPage();
        List<SportsCircleMember> list = sportsCircleMemberService.selectSportsCircleMemberList(sportsCircleMember);
        return getDataTable(list);
    }

    /**
     * 导出【请填写功能名称】列表
     */
    @RequiresPermissions("sports:member:export")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(SportsCircleMember sportsCircleMember)
    {
        List<SportsCircleMember> list = sportsCircleMemberService.selectSportsCircleMemberList(sportsCircleMember);
        ExcelUtil<SportsCircleMember> util = new ExcelUtil<SportsCircleMember>(SportsCircleMember.class);
        return util.exportExcel(list, "member");
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
    @RequiresPermissions("sports:member:add")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(SportsCircleMember sportsCircleMember)
    {
        return toAjax(sportsCircleMemberService.insertSportsCircleMember(sportsCircleMember));
    }

    /**
     * 修改【请填写功能名称】
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        SportsCircleMember sportsCircleMember = sportsCircleMemberService.selectSportsCircleMemberById(id);
        mmap.put("sportsCircleMember", sportsCircleMember);
        return prefix + "/edit";
    }

    /**
     * 修改保存【请填写功能名称】
     */
    @RequiresPermissions("sports:member:edit")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(SportsCircleMember sportsCircleMember)
    {
        return toAjax(sportsCircleMemberService.updateSportsCircleMember(sportsCircleMember));
    }

    /**
     * 删除【请填写功能名称】
     */
    @RequiresPermissions("sports:member:remove")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(sportsCircleMemberService.deleteSportsCircleMemberByIds(ids));
    }
}
