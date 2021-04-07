package com.ruoyi.specific.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ruoyi.specific.domain.RandomText;
import com.ruoyi.specific.mapper.RandomTextMapper;
import com.ruoyi.specific.service.RandomTextService;

@Service
public class RandomTextServiceImpl implements RandomTextService{
	
	@Autowired
    private RandomTextMapper textMapper;

	@Override
	public RandomText selectRandomText(int id) {
		return textMapper.selectRandomText(id);
	}

	@Override
	public List<RandomText> selectRandomTextList(RandomText text) {
		return textMapper.selectRandomTextList(text);
	}

	@Override
	public int insertRandomText(RandomText text) {
		return textMapper.insertRandomText(text);
	}

	@Override
	public int updateRandomText(RandomText text) {
		return textMapper.updateRandomText(text);
	}

	@Override
	public int deleteRandomTexts(String ids) {
		return textMapper.deleteRandomTexts(ids);
	}
	
	@Override
	public int deleteRandomText(int id) {
		return textMapper.deleteRandomText(id);
	}

	@Override
	public List<String> RandomTextIdList(RandomText text) {
		return textMapper.RandomTextIdList(text);
	}

}
