package com.ruoyi.specific.domain;

import com.ruoyi.common.core.domain.BaseEntity;

public class RandomPic extends BaseEntity{
	
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int id;
	/** 编号 **/
	private String number;
	
	/** 图片地址 **/
	private String picUrl;
	
	private String serviceUrl;
	
	private String uploadUrl;
	
	private String name;
	
	private String type;
	
	private String picshow;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	public String getPicUrl() {
		return picUrl;
	}

	public void setPicUrl(String picUrl) {
		this.picUrl = picUrl;
	}

	public String getServiceUrl() {
		return serviceUrl;
	}

	public void setServiceUrl(String serviceUrl) {
		this.serviceUrl = serviceUrl;
	}

	public String getUploadUrl() {
		return uploadUrl;
	}

	public void setUploadUrl(String uploadUrl) {
		this.uploadUrl = uploadUrl;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getPicshow() {
		return picshow;
	}

	public void setPicshow(String picshow) {
		this.picshow = picshow;
	}

	
	

}
