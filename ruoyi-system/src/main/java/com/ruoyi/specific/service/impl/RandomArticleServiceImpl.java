package com.ruoyi.specific.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ruoyi.specific.domain.RandomArticle;
import com.ruoyi.specific.mapper.RandomArticleMapper;
import com.ruoyi.specific.mapper.RandomPicMapper;
import com.ruoyi.specific.service.RandomArticleService;
@Service
public class RandomArticleServiceImpl implements RandomArticleService{
	
	@Autowired
    private RandomArticleMapper articleMapper;

	@Override
	public RandomArticle selectRandomArticle(int id) {
		return articleMapper.selectRandomArticle(id);
	}

	@Override
	public List<RandomArticle> selectRandomArticleList(RandomArticle article) {
		return articleMapper.selectRandomArticleList(article);
	}

	@Override
	public List<String> RandomArticleIdList(RandomArticle article) {
		return articleMapper.RandomArticleIdList(article);
	}

	@Override
	public int insertRandomArticle(RandomArticle article) {
		return articleMapper.insertRandomArticle(article);
	}

	@Override
	public int updateRandomArticle(RandomArticle article) {
		return articleMapper.updateRandomArticle(article);
	}

	@Override
	public int deleteRandomArticles(String ids) {
		return articleMapper.deleteRandomArticles(ids);
	}

	@Override
	public int deleteRandomArticle(int id) {
		return articleMapper.deleteRandomArticle(id);
	}

}
