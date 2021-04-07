package com.ruoyi.specific.service;

import java.util.List;

import com.ruoyi.specific.domain.RandomText;

public interface RandomTextService {
	
	public RandomText selectRandomText(int id);
	
	public List<RandomText> selectRandomTextList(RandomText text);
	
	public List<String> RandomTextIdList(RandomText text);
	
	public int insertRandomText(RandomText text);
	
	public int updateRandomText(RandomText text);
	
	public int deleteRandomTexts(String ids);
	
	public int deleteRandomText(int id);
	
	

}
