package com.exam.message;

public class ReplyTuwenMessage {

	private String toUserName;
	private String fromUserName;
	private String createTime;
	private String messageType;
	private int articleCount;

	private Articles Articles;
	private String funcFlag;

	// getters,setters
	public String getToUserName() {
		return toUserName;
	}

	public void setToUserName(String toUserName) {
		this.toUserName = toUserName;
	}

	public String getFromUserName() {
		return fromUserName;
	}

	public void setFromUserName(String fromUserName) {
		this.fromUserName = fromUserName;
	}

	public String getCreateTime() {
		return createTime;
	}

	public void setCreateTime(String createTime) {
		this.createTime = createTime;
	}

	public String getMessageType() {
		return messageType;
	}

	public void setMessageType(String messageType) {
		this.messageType = messageType;
	}

	public int getArticleCount() {
		return articleCount;
	}

	public void setArticleCount(int articleCount) {
		this.articleCount = articleCount;
	}

	public Articles getArticles() {
		return Articles;
	}

	public void setArticles(Articles articles) {
		Articles = articles;
	}

	public String getFuncFlag() {
		return funcFlag;
	}

	public void setFuncFlag(String funcFlag) {
		this.funcFlag = funcFlag;
	}

}
