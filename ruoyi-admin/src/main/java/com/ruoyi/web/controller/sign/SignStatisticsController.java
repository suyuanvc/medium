package com.ruoyi.web.controller.sign;


import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.sign.domain.SignHabit;
import com.ruoyi.sign.domain.SignList;
import com.ruoyi.sign.service.ISignHabitService;
import com.ruoyi.sign.service.ISignListService;
import com.ruoyi.sign.vo.StatisticsHabitVo;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * 统计各习惯签到打卡用时
 * @author 汪曾兵
 * @since 2022-05-03
 */
@Controller
@RequestMapping("/sign/statistics")
public class SignStatisticsController extends BaseController {

    @Autowired
    private ISignListService signListService;

    @Autowired
    private ISignHabitService signHabitService;

    private String prefix = "sign/list";

    @RequiresPermissions("sign:statistics:view")
    @GetMapping()
    public String habit(ModelMap mmap)
    {
        List<SignHabit> list = signHabitService.selectSignHabitList(null);
        mmap.put("list",list);
        return prefix + "/statistics";
    }

    /**
     * 统计各习惯签到打卡时长
     */
    @RequiresPermissions("sign:statistics:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(SignList signList)
    {
        startPage();
        List<StatisticsHabitVo> list = signListService.selectTimesByStatictics(signList);
        return getDataTable(list);
    }


}
