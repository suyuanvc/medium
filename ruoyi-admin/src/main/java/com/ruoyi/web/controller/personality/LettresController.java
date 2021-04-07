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
import com.ruoyi.common.utils.file.FileUploadUtils;
import com.ruoyi.specific.domain.RandomArticle;
import com.ruoyi.specific.domain.RandomText;
import com.ruoyi.specific.service.RandomArticleService;
import com.ruoyi.specific.service.RandomTextService;

import net.bytebuddy.agent.builder.AgentBuilder.CircularityLock.Global;

/**
 * @ 个性化专栏_Lettres Controller 美文专栏
 * @author wangcb
 * @date 2021/04/02
 */
@Controller
@RequestMapping("/personality/lettres")
public class LettresController extends BaseController{
	private String prefix = "personality/lettres";
	
	@Autowired
    private RandomArticleService articleService;
	@Autowired
    private ServerConfig serverConfig;
	
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
       public TableDataInfo list(RandomArticle article)
       {
           startPage();
           List<RandomArticle> list = articleService.selectRandomArticleList(article);
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
       public AjaxResult addText(RandomArticle article)
       {
          // 番号校验
          
           return toAjax(articleService.insertRandomArticle(article));
       }
       
      /**
       * 富文本编辑器上传图片
       * @param article
       * @return
       */
       @PostMapping("/uploadPic")
       @ResponseBody
       public AjaxResult uploadPic(MultipartFile file)
       {
    	   
    	   try
           {
               // 上传文件路径
               String filePath = RuoYiConfig.getSummernotePicPath();
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
       
       @PostMapping("/removePic")
       @ResponseBody
       public AjaxResult removePic(String urlimg) {
    	   
    	   //将url链接替换为本地链接
    	   //http://localhost:8081/profile/summernote/2021/04/03/b275eed5-8ec2-4094-8f72-3fcb6b9df183.jpg
    	   //String filePath = RuoYiConfig.getRandomPicPath();
    	   String path = RuoYiConfig.getProfile();
    	   AjaxResult ajax = AjaxResult.success();
    	   
    	   // 截取字符串
    	   String url[] = urlimg.split("profile");
    	   String res = url[1];
    	   String filePath = path+ res;
    	   
    	   File file = new File(filePath);
    	   if(file.exists()) {
    		   file.delete(); 
               ajax.put("message", "删除成功！");
    	   }else {
    		   ajax.put("message", "文件不存在！");
    	   }
    	   return ajax;
    	  
       }
       
       

       /**
        * 修改用户
        */
       @GetMapping("/edit/{id}")
       public String edit(@PathVariable("id")int id, ModelMap mmap)
       {
    	   RandomArticle article = articleService.selectRandomArticle(id);
           mmap.put("article", article);
           return prefix + "/edit";
       }
       
       /**
        * 修改保存用户
        */
       @Log(title = "图文修改", businessType = BusinessType.UPDATE)
       @PostMapping("/edit")
       @ResponseBody
       public AjaxResult editSave(RandomArticle article)
       {
           return toAjax(articleService.updateRandomArticle(article));
       }
       
       /**
        * 删除
        */
       @Log(title = "图文删除", businessType = BusinessType.DELETE)
       @PostMapping("/remove")
       @ResponseBody
       public AjaxResult remove(int ids)
       {
           return toAjax(articleService.deleteRandomArticle(ids));
       }
       
       /**
        * 修改用户
        */
       @GetMapping("/details/{id}")
       public String details(@PathVariable("id") int id,ModelMap mmap)
       {
    	   RandomArticle article = articleService.selectRandomArticle(id);
           mmap.put("article", article);
           return prefix + "/details";
       }

}
