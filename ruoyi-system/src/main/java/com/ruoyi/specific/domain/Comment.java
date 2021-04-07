package com.ruoyi.specific.domain;

import com.ruoyi.common.core.domain.BaseEntity;

/***
 * 评论类
 */
public class Comment extends BaseEntity {

    /**
     *
     */
    private static final long serialVersionUID = 1L;

    private int id;

    /** 评论内容 **/
    private String content;

    /** 点赞量 **/
    private int approveNum;

    /** 被评论ID **/
    private int toId;
    /** 评论类型 **/
    private String type;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public int getApproveNum() {
        return approveNum;
    }

    public void setApproveNum(int approveNum) {
        this.approveNum = approveNum;
    }

    public int getToId() {
        return toId;
    }

    public void setToId(int toId) {
        this.toId = toId;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
}
