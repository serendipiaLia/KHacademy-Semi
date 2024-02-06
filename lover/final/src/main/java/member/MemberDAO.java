package member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import njdbc.JDBCUtil;

public class MemberDAO {
	Connection conn = null;         //db 연결 및 종료
	PreparedStatement pstmt = null; //sql 처리
	ResultSet rs = null;            //검색한 데이터셋
	
	//회원 목록
		public List<Member> getMemberList(){
			List<Member> userList = new ArrayList<>();
			try {
				//db 연결
				conn = JDBCUtil.getConnection();
				//sql 처리
				String sql = "SELECT * FROM users ORDER BY user_no";
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				while(rs.next()) {
					//빈 회원을 생성해서 db에서 정보를 가져와서 세팅
					Member m = new Member();
					m.setUserNo(rs.getInt("user_no"));
					m.setUserId(rs.getString("user_id"));
					m.setUserPasswd(rs.getString("user_passwd"));
					m.setUserName(rs.getString("user_name"));
					m.setUserAddr(rs.getString("user_addr"));
					m.setUserPhone(rs.getString("user_phone"));
					m.setUserJoindate(rs.getTimestamp("user_joindate"));
					//리스트에 회원을 추가
					userList.add(m);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			} finally { //db 종료
				JDBCUtil.close(conn, pstmt, rs);
			}
			return userList;
		}
	
	//회원 가입
	public void insertMember(Member m) {
		try {
			conn = JDBCUtil.getConnection();
			
			String sql = "insert into users (user_no, user_id, user_passwd, user_name, user_phone, user_addr) "
					+ "values(seq_user_no.nextval, ?, ?, ?, ?,?)";
			pstmt = conn.prepareStatement(sql);
			//폼에 입력된 데이터를 가져와서 db에 저장함
			pstmt.setString(1, m.getUserId());
			pstmt.setString(2, m.getUserPasswd());
			pstmt.setString(3, m.getUserName());
			pstmt.setString(4, m.getUserPhone());
			pstmt.setString(5, m.getUserAddr());
			//sql 실행
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn, pstmt);
		}
	}
	
	//회원 정보(상세보기)
	public Member getMember(String user_id) {
		Member m = new Member();
		try {
			conn = JDBCUtil.getConnection();
		
			String sql = "SELECT * FROM users WHERE user_id = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user_id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				m.setUserId(rs.getString("user_id"));
				m.setUserPasswd(rs.getString("user_passwd"));
				m.setUserName(rs.getString("user_name"));
				m.setUserAddr(rs.getString("user_addr"));
				m.setUserJoindate(rs.getTimestamp("user_joindate"));
				m.setUserPhone(rs.getString("user_phone"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn, pstmt, rs);
		}
		return m;
	}
	
	//로그인 인증(객체:member 로 반환)
	public Member checkLogin(Member m) {
		try {
			conn = JDBCUtil.getConnection();
			String sql = "SELECT * FROM users "
					+ "WHERE user_id = ? and user_passwd = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, m.getUserId());
			pstmt.setString(2, m.getUserPasswd());
			rs = pstmt.executeQuery();
			if(rs.next()) {
				//이름을 db에서 가져옴
				m.setUserName(rs.getString("user_name"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn, pstmt, rs);
		}
		return m;
	}
	
	
	//ID 중복 검사
	public boolean getDuplicatedId(String id) {
		boolean result = false;
		
		try {
			conn = JDBCUtil.getConnection();
			String sql = "SELECT DECODE(count(*), 1, 'true', 'false') as result "
					+ "FROM users WHERE user_id = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				//별칭 result를 칼럼으로 db에서 데이터를 가져옴
				result = rs.getBoolean("result");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return result;
	}
	//회원 탈퇴
	public void deletemember(String id) {
	      try {
	         //db 연결
	         conn = JDBCUtil.getConnection();
	         //sql 처리
	         String sql = "DELETE FROM users WHERE user_id = ?";
	         pstmt = conn.prepareStatement(sql);
	         pstmt.setString(1, id);
	         //sql 실행
	         pstmt.executeUpdate();
	      }catch(Exception e) {
	         e.printStackTrace();
	      } finally {
	         JDBCUtil.close(conn, pstmt);
	      }
	   }
	//회원 정보 수정
	public void updateUsers(Member m) {
	      //현재 날짜와 시간 객체 생성
	      try {
	         //db 연결
	         conn = JDBCUtil.getConnection();
	         //sql 처리 : 수정일 처리는 현재 날짜와 시간을 입력함
	         String sql = "UPDATE users SET user_passwd= ?, user_phone = ?, user_addr = ? "
	               + "WHERE user_id= ?";
	         pstmt = conn.prepareStatement(sql);
	         
	         pstmt.setString(1, m.getUserPasswd());
	         pstmt.setString(2, m.getUserPhone());
	         pstmt.setString(3, m.getUserAddr());
	         pstmt.setString(4, m.getUserId());
	         //sql 실행
	         pstmt.executeUpdate();
	      }catch(Exception e) {
	         e.printStackTrace();
	      } finally {
	         JDBCUtil.close(conn, pstmt);
	      }
	   }
}
