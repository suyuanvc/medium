package com.ruoyi.specific.mapper;

import java.util.List;

import com.ruoyi.specific.domain.RandomPic;

public interface RandomPicMapper {
	public RandomPic selectRandomPic(int id);
	
	public List<RandomPic> selectRandomPicList(RandomPic pic);
	
	public List<String> RandomPicIdList(RandomPic pic);
	
	public int insertRandomPic(RandomPic pic);
	
	public int updateRandomPic(RandomPic pic);
	
	public int deleteRandomPics(String ids);
	
	public int deleteRandomPic(int id);
	
	
	
	
	
}
