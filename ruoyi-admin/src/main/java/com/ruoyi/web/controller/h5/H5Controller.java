package com.ruoyi.web.controller.h5;

import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ruoyi.common.config.RuoYiConfig;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.specific.domain.RandomPic;
import com.ruoyi.specific.domain.RandomText;
import com.ruoyi.specific.service.RandomPicService;
import com.ruoyi.specific.service.RandomTextService;

@Controller
@RequestMapping("/h5/show")
public class H5Controller extends BaseController{
	
	@Autowired
    private RandomTextService textService;
	
	@Autowired
    private RandomPicService picService;
	
	private String prefix = "personality/h5";
	@RequestMapping("index")
    public String hostpitalList(ModelMap mmap)
    {
		Random random = new Random();
		// 获取随机精句
		RandomText text = new RandomText();
		List<RandomText> textList = textService.selectRandomTextList(text);
		int len = textList.size();
		int textNum = random.nextInt(len);
		
		RandomText rText = textList.get(textNum);
		String mw = rText.getContent();
		mmap.put("mw", mw);
		// 获取随机美图
		
		RandomPic pic = new RandomPic();
		List<RandomPic> picList = picService.selectRandomPicList(pic);
		int picLen = picList.size();
		int picNum = random.nextInt(picLen);
		
		RandomPic rPic = picList.get(picNum);
		String url = rPic.getPicUrl();
		
		mmap.put("url", url);
        return prefix + "/index";
    }

}