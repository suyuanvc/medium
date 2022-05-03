package com.ruoyi.web.controller.task;

import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.sign.domain.SignHabit;
import com.ruoyi.sign.service.ISignHabitService;
import com.ruoyi.web.core.common.CommonConfig;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Component;


/**
 * 【习惯热点定时任务】Controller
 *
 * @author ruoyi
 * @date 2022-04-30
 */
@Component("babitHotTask")
public class HabitHotTaskController extends BaseController {

    @Autowired
    private RedisTemplate<String,String> redisTemplate;
    @Autowired
    private ISignHabitService signHabitService;

    /**
     * 查询【请填写功能名称】列表
     */


    public AjaxResult babitHot()
    {
        try{
            while (redisTemplate.opsForList().size(CommonConfig.HABIT_HOT) > 0){
                String res = redisTemplate.opsForList().rightPop(CommonConfig.HABIT_HOT);
                SignHabit sh = signHabitService.selectSignHabitById(Integer.parseInt(res));
                sh.setHabitHot(sh.getHabitHot()+1);
                signHabitService.updateSignHabit(sh);
            }
            return AjaxResult.success();
        }catch(Exception e){
            return AjaxResult.error();
        }


    }




}
