package com.ruoyi.specific.domain;

import com.ruoyi.common.core.domain.BaseEntity;

public class RandomText extends BaseEntity{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private int id;
	/** 编号 **/
	private String number;
	
	/** 文字内容 **/
	private String content;
	
	/** 美文 or 精句  1 精句 2 美文 **/
	private String type;
	
	/** 美文ID **/
	private int articleId;
	
	/** 1 励志 2 抒情 3 奋斗 **/
	private String cType;

	/** 评论量 **/
	private int commentNum;
	/** 点赞量 **/
	private int approveNum;

	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public int getArticleId() {
		return articleId;
	}

	public void setArticleId(int articleId) {
		this.articleId = articleId;
	}

	public String getcType() {
		return cType;
	}

	public void setcType(String cType) {
		this.cType = cType;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getCommentNum() {
		return commentNum;
	}

	public void setCommentNum(int commentNum) {
		this.commentNum = commentNum;
	}

	public int getApproveNum() {
		return approveNum;
	}

	public void setApproveNum(int approveNum) {
		this.approveNum = approveNum;
	}
}
