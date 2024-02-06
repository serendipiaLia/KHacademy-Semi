package member;

import java.sql.Timestamp;

public class Member {
private static final long serialVersionUID = 11L;
	
	private int userNo;            
	private String userId;				//회원 아이디
	private String userPasswd;			//비밀번호
	private String userName;			//성명
	private String userPhone; 			//핸드
	private String userAddr;
	private Timestamp userJoindate;		//가입일
	
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserPasswd() {
		return userPasswd;
	}
	public void setUserPasswd(String userPasswd) {
		this.userPasswd = userPasswd;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserPhone() {
		return userPhone;
	}
	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}
	public String getUserAddr() {
		return userAddr;
	}
	public void setUserAddr(String userAddr) {
		this.userAddr = userAddr;
	}
	public Timestamp getUserJoindate() {
		return userJoindate;
	}
	public void setUserJoindate(Timestamp userJoindate) {
		this.userJoindate = userJoindate;
	}

}
