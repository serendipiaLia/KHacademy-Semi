package njdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

//db에 연결하고 종료하는 클래스
public class JDBCUtil {
	static String driverClass = "oracle.jdbc.OracleDriver";
	static String url = "jdbc:oracle:thin:@localhost:1521/xe"; //오라클 jweb 속성들어가면 확인 가능
	static String id = "c##nollaeng"; //아이디
	static String passwd = "pw1234"; //비번
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	//연결 메서드
	public static Connection getConnection() {
		try {
			Class.forName(driverClass);
			return DriverManager.getConnection(url, id, passwd);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	//종료 메서드
	public static void close(Connection conn, PreparedStatement pstmt) {
		if(pstmt != null) {	//연결되어 있으면
			try {
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if(conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	//종료 메서드
	public static void close(Connection conn, PreparedStatement pstmt,
			ResultSet rs ) {
		if(rs != null) {
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if(pstmt != null) {	//연결되어 있으면
			try {
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if(conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
}
