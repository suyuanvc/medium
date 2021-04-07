package com.ruoyi.specific.service;

import java.util.List;

import com.ruoyi.specific.domain.RandomArticle;

public interface RandomArticleService {
	
	public RandomArticle selectRandomArticle(int id);
	
	public List<RandomArticle> selectRandomArticleList(RandomArticle article);

	public List<String> RandomArticleIdList(RandomArticle article);
	
	public int insertRandomArticle(RandomArticle article);
	
	public int updateRandomArticle(RandomArticle article);
	
	public int deleteRandomArticles(String ids);
	
	public int deleteRandomArticle(int id);

}
