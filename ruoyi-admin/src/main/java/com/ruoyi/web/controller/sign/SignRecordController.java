package com.ruoyi.web.controller.sign;

import java.util.Date;
import java.util.List;

import com.ruoyi.common.utils.ShiroUtils;
import com.ruoyi.sign.domain.SignHabit;
import com.ruoyi.sign.domain.SignList;
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
import com.ruoyi.sign.domain.SignRecord;
import com.ruoyi.sign.service.ISignRecordService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 【签到打卡】Controller
 * 
 * @author ruoyi
 * @date 2022-04-28
 */
@Controller
@RequestMapping("/sign/record")
public class SignRecordController extends BaseController
{
    private String prefix = "sign/record";

    @Autowired
    private ISignRecordService signRecordService;
    @Autowired
    private ISignHabitService signHabitService;

    @RequiresPermissions("sign:record:view")
    @GetMapping()
    public String record()
    {
        return prefix + "/record";
    }

    /**
     * 查询【签到打卡】列表
     */
    @RequiresPermissions("sign:record:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(SignRecord signRecord)
    {
        startPage();
        List<SignRecord> list = signRecordService.selectSignRecordList(signRecord);
        return getDataTable(list);
    }

    /**
     * 导出【签到打卡】列表
     */
    @RequiresPermissions("sign:record:export")
    @Log(title = "【签到打卡】", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(SignRecord signRecord)
    {
        List<SignRecord> list = signRecordService.selectSignRecordList(signRecord);
        ExcelUtil<SignRecord> util = new ExcelUtil<SignRecord>(SignRecord.class);
        return util.exportExcel(list, "record");
    }

    /**
     * 新增【签到打卡】
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存【签到打卡】
     */
    @RequiresPermissions("sign:record:add")
    @Log(title = "【签到打卡】", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(SignRecord signRecord)
    {
        String userName = ShiroUtils.getSysUser().getLoginName();
        signRecord.setSignUser(userName);
        return toAjax(signRecordService.insertSignRecord(signRecord));
    }

    /**
     * 修改【签到打卡】
     */
    @GetMapping("/edit/{recordId}")
    public String edit(@PathVariable("recordId") Long recordId, ModelMap mmap)
    {
        SignRecord signRecord = signRecordService.selectSignRecordById(recordId);
        mmap.put("signRecord", signRecord);
        return prefix + "/edit";
    }

    /**
     * 修改保存【签到打卡】
     */
    @RequiresPermissions("sign:record:edit")
    @Log(title = "【签到打卡】", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(SignRecord signRecord)
    {
        signRecord.setLastTime(new Date());
        return toAjax(signRecordService.updateSignRecord(signRecord));
    }

    /**
     * 删除【签到打卡】
     */
    @RequiresPermissions("sign:record:remove")
    @Log(title = "【删除签到打卡】", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(signRecordService.deleteSignRecordByIds(ids));
    }

    /**
     * 详情【签到打卡】
     */
    @RequiresPermissions("sign:record:edit")
    @GetMapping("detail")
    public String detail(String recordId)
    {
        return "sign/list/list?recordId="+recordId;
    }


}
