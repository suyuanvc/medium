package com.ruoyi.web.test;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.system.service.ISysConfigService;

@Controller
@RequestMapping("/testRedis")
public class TestRedisController extends BaseController {
	
	@Autowired
	private RedisTemplate<String,String> redisTemplate;
	
    @RequestMapping("/redisSet")
    @ResponseBody
    public String redisSet()
    {
        redisTemplate.opsForValue().set("test", "redis测试");
        return "ok";
    }
    
    @RequestMapping("/redisGet")
    @ResponseBody
    public String redisGet()
    {
        return redisTemplate.opsForValue().get("test");
    }

}
