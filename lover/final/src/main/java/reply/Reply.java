package reply;

import java.sql.Timestamp;

public class Reply {
private static final long serialVersionUID = 13L;
	
	
	private int replyNo;
	private String replyContent;
	private Timestamp replyDate;
	private Timestamp reviewDate;
	private String userId;
	private Timestamp replyUpdate;
	private int reviewNo;
	
	public int getReplyNo() {
		return replyNo;
	}
	public void setReplyNo(int replyNo) {
		this.replyNo = replyNo;
	}
	public String getReplyContent() {
		return replyContent;
	}
	public void setReplyContent(String replyContent) {
		this.replyContent = replyContent;
	}
	public Timestamp getReplyDate() {
		return replyDate;
	}
	public void setReplyDate(Timestamp replyDate) {
		this.replyDate = replyDate;
	}
	public Timestamp getReviewDate() {
		return reviewDate;
	}
	public void setReviewDate(Timestamp reviewDate) {
		this.reviewDate = reviewDate;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public Timestamp getReplyUpdate() {
		return replyUpdate;
	}
	public void setReplyUpdate(Timestamp replyUpdate) {
		this.replyUpdate = replyUpdate;
	}
	public int getReviewNo() {
		return reviewNo;
	}
	public void setReviewNo(int reviewNo) {
		this.reviewNo = reviewNo;
	}

}
