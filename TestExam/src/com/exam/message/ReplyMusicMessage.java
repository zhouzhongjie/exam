package com.exam.message;

public class ReplyMusicMessage {

	private String toUserName;
	private String fromUserName;
	private String createTime;
	private String messageType;
	private Music Music;
	private String funcFlag;

	// �����funcFlag��΢��ƽ̨�ӿ��ĵ���û�У����Ǳ���д�ϣ���Ȼ���ղ������ص���Ϣ
	// getters��setters
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

	public Music getMusic() {
		return Music;
	}

	public void setMusic(Music music) {
		Music = music;
	}

	public String getFuncFlag() {
		return funcFlag;
	}

	public void setFuncFlag(String funcFlag) {
		this.funcFlag = funcFlag;
	}

}
