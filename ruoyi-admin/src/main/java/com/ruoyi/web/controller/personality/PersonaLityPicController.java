package com.ruoyi.web.controller.personality;

import java.io.File;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.config.RuoYiConfig;
import com.ruoyi.common.config.ServerConfig;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.common.utils.file.FileUploadUtils;
import com.ruoyi.specific.domain.RandomPic;
import com.ruoyi.specific.service.RandomPicService;

/**
 * 个性化专栏_pic Controller
 * 
 * @author wcb
 */
@Controller
@RequestMapping("/personality/pic")
public class PersonaLityPicController extends BaseController{
	
	private String prefix = "personality/pic";
	
	@Autowired
    private RandomPicService picService;
	@Autowired
    private ServerConfig serverConfig;
	
	/**
	 * 跳转到个性化专栏  美图管理列表页
	 * @return
	 */
    @RequestMapping()
    public String pic()
    {
        return prefix + "/list";
    }
    
    /**
	 * 加载美图管理列表页 数据
	 * @return
	 */
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(RandomPic pic)
    {
        startPage();
        List<RandomPic> list = picService.selectRandomPicList(pic);
        return getDataTable(list);
    }
    
    /**
     * 新增美图
     */
    @GetMapping("/add")
    public String add(ModelMap mmap)
    {
        return prefix + "/add";
    }
    
    /**
     * 新增保存美图
     */
    @Log(title = "用户管理", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addPic(RandomPic pic)
    {
       // 番号校验
       
        return toAjax(picService.insertRandomPic(pic));
    }
    
    /**
     * 修改美图
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id")int id, ModelMap mmap)
    {
    	RandomPic pic = picService.selectRandomPic(id);
        mmap.put("pic", pic);
        if(pic != null) {
        	if(StringUtils.isNotEmpty(pic.getName())) {
        		mmap.put("name", pic.getName());
        	}
        }
        
        return prefix + "/edit";
    }
    
    /**
     * 修改保存美图
     */
    @Log(title = "美图修改", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(RandomPic pic)
    {
        return toAjax(picService.updateRandomPic(pic));
    }
    
    /**
     * 删除
     */
    @SuppressWarnings("finally")
	@Log(title = "美图删除", businessType = BusinessType.DELETE)
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(int ids)
    {
    	RandomPic pic = picService.selectRandomPic(ids);
    	String url = pic.getPicUrl();
    	int result = picService.deleteRandomPic(ids);
    	if(result>0) {
    		// 删除图片
    		try {
    			String path = RuoYiConfig.getProfile();
    			url = url.replace("/profile", path);
    			
    			File file = new File(url);
        		if (file.exists() && file.isFile()) {
        			file.delete();
                } 
    		}catch(Exception e) {
    			e.printStackTrace();
    		}finally {
    			return toAjax(1);
    		}
    	}else {
    		return toAjax(0);
    	}
    	
        
    }
    
    
    /**
     * 通用上传请求
     */
    @PostMapping("/common/upload")
    @ResponseBody
    public AjaxResult uploadFile(MultipartFile file) throws Exception
    {
        try
        {
            // 上传文件路径
            String filePath = RuoYiConfig.getRandomPicPath();
            // 上传并返回新文件名称
            String fileName = FileUploadUtils.upload(filePath, file);
            String url = serverConfig.getUrl() + fileName;
            AjaxResult ajax = AjaxResult.success();
            ajax.put("fileName", fileName);
            ajax.put("url", url);
            return ajax;
        }
        catch (Exception e)
        {
            return AjaxResult.error(e.getMessage());
        }
    }
	
	

}
