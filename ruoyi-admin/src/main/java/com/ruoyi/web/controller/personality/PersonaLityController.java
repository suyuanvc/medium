package com.ruoyi.web.controller.personality;

import java.util.List;
import java.util.stream.Collectors;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.constant.UserConstants;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.core.domain.entity.SysRole;
import com.ruoyi.common.core.domain.entity.SysUser;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.common.utils.ShiroUtils;
import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.specific.domain.RandomText;
import com.ruoyi.specific.service.RandomTextService;
import com.ruoyi.system.service.ISysUserService;


/**
 * 个性化专栏_text Controller
 * 
 * @author wcb
 */
@Controller
@RequestMapping("/personality/text")
public class PersonaLityController extends BaseController{
	private String prefix = "personality/text";
	
	@Autowired
    private RandomTextService textService;
	
	
	/**
	 * 跳转到个性化专栏  图文管理列表页
	 * @return
	 */
    @RequestMapping()
    public String text()
    {
        return prefix + "/list";
    }
    
    /**
	 * 加载图文管理列表页 数据
	 * @return
	 */
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(RandomText text)
    {
        startPage();
        List<RandomText> list = textService.selectRandomTextList(text);
        return getDataTable(list);
    }
    
    /**
     * 新增美文
     */
    @GetMapping("/add")
    public String add(ModelMap mmap)
    {
        return prefix + "/add";
    }
    
    /**
     * 新增保存用户
     */
    @Log(title = "用户管理", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addText(RandomText text)
    {
       // 番号校验
       
        return toAjax(textService.insertRandomText(text));
    }
    
    /**
     * 修改用户
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id")int id, ModelMap mmap)
    {
        RandomText text = textService.selectRandomText(id);
        mmap.put("text", text);
        return prefix + "/edit";
    }
    
    /**
     * 修改保存用户
     */
    @Log(title = "图文修改", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(RandomText text)
    {
        return toAjax(textService.updateRandomText(text));
    }
    
    /**
     * 删除
     */
    @Log(title = "图文删除", businessType = BusinessType.DELETE)
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(int ids)
    {
        return toAjax(textService.deleteRandomText(ids));
    }

}
