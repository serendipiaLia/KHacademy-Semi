package board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import njdbc.JDBCUtil;

public class CommunityDAO {
	
	Connection conn = null;         //db 연결 및 종료
	PreparedStatement pstmt = null; //sql 처리
	ResultSet rs = null;            //검색한 데이터셋

	//게시글 목록
	public List<Community> getBoardList(){
		List<Community> boardList = new ArrayList<>();
		
		try {
			//db 연결
			conn = JDBCUtil.getConnection();
			//sql 처리
			String sql = "SELECT * FROM community ORDER BY review_no DESC";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Community c = new Community();
				c.setReviewNo(rs.getInt("review_no"));
				c.setReviewContent(rs.getString("review_content"));
				c.setLocalName(rs.getString("local_name"));
				c.setTitle(rs.getString("title"));
				c.setUserId(rs.getString("user_id"));
				c.setHit(rs.getInt("hit"));
				c.setReviewCreatedate(rs.getTimestamp("review_createdate"));
				
				boardList.add(c); //list에 c 객체 저장함
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn, pstmt, rs);
		}
		return boardList;
	}
	
	//게시글 목록 (페이지 처리)
		public List<Community> getBoardList(int page){
			List<Community> boardList = new ArrayList<>();
			
			try {
				//db 연결
				conn = JDBCUtil.getConnection();
				//sql 처리
				String sql = "SELECT * "
						+ "FROM (SELECT ROWNUM RM, bo.* "
						+ "      FROM (SELECT * FROM community ORDER BY review_no) bo) "
						+ "WHERE RM >= ? AND RM <= ?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, (page - 1) * 10 + 1); //시작행 (startRow)
				pstmt.setInt(2, page * 10);			  //페이지당 게시글(끝번호)
				rs = pstmt.executeQuery();
				while(rs.next()) {
					Community b = new Community();
					b.setReviewNo(rs.getInt("review_content"));
					b.setLocalName(rs.getString("local_name"));
					b.setTitle(rs.getString("title"));
					b.setReviewContent(rs.getString("review_content"));
					b.setReviewCreatedate(rs.getTimestamp("review_createdate"));
					b.setReviewModifydate(rs.getTimestamp("review_modifydate"));
					b.setHit(rs.getInt("hit"));
					b.setFileName(rs.getString("filename"));
					b.setUserId(rs.getString("user_id"));
					
					boardList.add(b); //list에 b 객체 저장함
				}
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				JDBCUtil.close(conn, pstmt, rs);
			}
			return boardList;
		}
		
	//게시글 목록 (페이지와 검색 처리)
			public List<Community> getBoardList(String field, String kw){
				List<Community> boardList = new ArrayList<>();
				
				try {
					//db 연결
					conn = JDBCUtil.getConnection();
					//sql 처리 : field에 title, id가 입력됨
					String sql = "SELECT * FROM community "
							+ "WHERE " + field + " LIKE ? ORDER BY review_no";
					pstmt = conn.prepareStatement(sql);
					pstmt.setString(1, "%" + kw + "%");
					rs = pstmt.executeQuery();
					while(rs.next()) {
						Community b = new Community();
						b.setReviewNo(rs.getInt("bno"));
						b.setLocalName(rs.getString("local_name"));
						b.setTitle(rs.getString("title"));
						b.setReviewContent(rs.getString("review_content"));
						b.setReviewCreatedate(rs.getTimestamp("review_createdate"));
						b.setReviewModifydate(rs.getTimestamp("review_modifydate"));
						b.setHit(rs.getInt("hit"));
						b.setFileName(rs.getString("filename"));
						b.setUserId(rs.getString("user_id"));
						
						boardList.add(b); //list에 b 객체 저장함
					}
				} catch (SQLException e) {
					e.printStackTrace();
				} finally {
					JDBCUtil.close(conn, pstmt, rs);
				}
				return boardList;
			}
			
			//게시글 목록 (게시글 검색 처리)
			public List<Community> getBoardList(String field, String kw, int page){
				List<Community> boardList = new ArrayList<>();
				
				try {
					//db 연결
					conn = JDBCUtil.getConnection();
					//sql 처리 : field에 title, id가 입력됨
					String sql = "SELECT * "
							+ "FROM (SELECT ROWNUM RM, bo.* "
							+ "      FROM (SELECT * FROM community " 
							+ "		 WHERE " + field + " LIKE ? ORDER BY review_no) bo) "
							+ "WHERE RM >= ? AND RM <= ?";
					pstmt = conn.prepareStatement(sql);
					pstmt.setString(1, "%" + kw + "%");
					pstmt.setInt(2, (page - 1) * 10 + 1);
					pstmt.setInt(3, page * 10);
					rs = pstmt.executeQuery();
					while(rs.next()) {
						Community b = new Community();
						b.setReviewNo(rs.getInt("review_no"));
						b.setLocalName(rs.getString("local_name"));
						b.setTitle(rs.getString("title"));
						b.setReviewContent(rs.getString("review_content"));
						b.setReviewCreatedate(rs.getTimestamp("review_createdate"));
						b.setReviewModifydate(rs.getTimestamp("review_modifydate"));
						b.setHit(rs.getInt("hit"));
						b.setFileName(rs.getString("filename"));
						b.setUserId(rs.getString("user_id"));
						
						boardList.add(b); //list에 b 객체 저장함
					}
				} catch (SQLException e) {
					e.printStackTrace();
				} finally {
					JDBCUtil.close(conn, pstmt, rs);
				}
				return boardList;
			}
		
	//총 게시글
	public int getBoardCount() {
		int total = 0;
		try {
			//db 연결
			conn = JDBCUtil.getConnection();
			//sql 처리
			String sql = "SELECT COUNT(*) as total FROM community";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery(); //검색한 데이터
			if(rs.next()) {
				total = rs.getInt("total");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn, pstmt, rs);
		}
	
		
		return total;
	}
	
	//글쓰기 처리
	   public void write(Community c) {
	      try {
	         //db 연결
	         conn = JDBCUtil.getConnection();
	         //sql 처리
	         String sql = "insert into community(review_no, local_name, title, review_content, user_id, filename) "
	         		+ "values (seq_review_no.nextval, ?, ?, ?, ?, ?)";
	         pstmt = conn.prepareStatement(sql);
	         pstmt.setString(1, c.getLocalName());
	         pstmt.setString(2, c.getTitle());
	         pstmt.setString(3, c.getReviewContent());
	         pstmt.setString(4, c.getUserId());
	         pstmt.setString(5, c.getFileName());
	         //sql 실행
	         pstmt.executeUpdate();
	      } catch (SQLException e) {
	         e.printStackTrace();
	      } finally {
	         JDBCUtil.close(conn, pstmt);
	      }
	   }
	
	//게시글 상세보기
		public Community getBoard(int reviewNo) {
			Community c = new Community();
			try {
				conn = JDBCUtil.getConnection();
				String sql = "SELECT * FROM community WHERE review_no = ?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, reviewNo);
				rs = pstmt.executeQuery();
				if(rs.next()) {
					c.setReviewNo(rs.getInt("review_no"));
					c.setLocalName(rs.getString("local_name"));
					c.setTitle(rs.getString("title"));
					c.setReviewContent(rs.getString("review_content"));
					c.setReviewCreatedate(rs.getTimestamp("review_createdate"));
					c.setReviewModifydate(rs.getTimestamp("review_modifydate"));
					c.setHit(rs.getInt("hit"));
					c.setFileName(rs.getString("filename"));
					c.setUserId(rs.getString("user_id"));
					
					//조회수 1증가
					sql = "UPDATE community SET hit = hit + 1 "
							+ "WHERE review_no = ?";
					pstmt = conn.prepareStatement(sql);
					/* pstmt.setInt(1, rs.getInt("hit") + 1); */
					pstmt.setInt(1, reviewNo);
					pstmt.executeUpdate(); //실행
				}
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				JDBCUtil.close(conn, pstmt, rs);
			}
			return c;
		}
		
	//게시글 삭제
		public void deletecommunity(int reviewNo) {
			try {
				//db 연결
				conn = JDBCUtil.getConnection();
				//sql 처리
				String sql = "DELETE FROM community WHERE review_no = ?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, reviewNo);
				//sql 실행
				pstmt.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				JDBCUtil.close(conn, pstmt);
			}
		}
	// 게시글 수정 : 가입과 비슷하나 수정해서 가입시킨다고 이해하면 좋음
		public void updateboard(Community c) {
			//현재 날짜와 시간 객체 생성
			Timestamp now = new Timestamp(System.currentTimeMillis());
			try {
				//db 연결
				conn = JDBCUtil.getConnection();
				//sql 처리 : 수정일 처리는 현재 날짜와 시간을 입력
				String sql = "UPDATE community SET title = ?, review_content = ?, local_name = ?, review_modifydate = ? "
						+ "WHERE review_no = ?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, c.getTitle());
				pstmt.setString(2, c.getReviewContent());
				pstmt.setString(3, c.getLocalName()); //수정일
				pstmt.setTimestamp(4, now);
				pstmt.setInt(5, c.getReviewNo());
				//sql 실행
				pstmt.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				JDBCUtil.close(conn, pstmt);
			}
		}
}//dao클래스 닫기
