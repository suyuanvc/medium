package com.ruoyi.specific.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ruoyi.specific.domain.RandomPic;
import com.ruoyi.specific.mapper.RandomPicMapper;
import com.ruoyi.specific.mapper.RandomTextMapper;
import com.ruoyi.specific.service.RandomPicService;
@Service
public class RandomPicServiceImpl implements RandomPicService{
	@Autowired
    private RandomPicMapper picMapper;
	
	@Override
	public RandomPic selectRandomPic(int id) {
		return picMapper.selectRandomPic(id);
	}

	@Override
	public List<RandomPic> selectRandomPicList(RandomPic pic) {
		return picMapper.selectRandomPicList(pic);
	}

	@Override
	public int insertRandomPic(RandomPic pic) {
		return picMapper.insertRandomPic(pic);
	}

	@Override
	public int updateRandomPic(RandomPic pic) {
		return picMapper.updateRandomPic(pic);
	}

	@Override
	public int deleteRandomPics(String ids) {
		return picMapper.deleteRandomPics(ids);
	}

	@Override
	public int deleteRandomPic(int id) {
		return picMapper.deleteRandomPic(id);
	}

	@Override
	public List<String> RandomPicIdList(RandomPic pic) {
		return picMapper.RandomPicIdList(pic);
	}

}
