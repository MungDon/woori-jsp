package web.test.bean;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBconnection {
	
	public Connection getConn()throws Exception {
		
		Class.forName("oracle.jdbc.driver.OracleDriver");
		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		String user = "scott";
		String password ="tiger";
		
		Connection conn = DriverManager.getConnection(url,user,password);
		
		return conn;
	}
	
	public void close(Connection conn, PreparedStatement pstmt, ResultSet rs) {
		
		try {
			if(conn !=null) {
				conn.close();
			}
		}catch (SQLException e) {
			e.printStackTrace();
		}
		
		try {
			if(pstmt !=null) {
				pstmt.close();
			}
		}catch (SQLException e) {
			e.printStackTrace();
		}
		
		try {
			if(rs !=null) {	
				rs.close();
			}
		} catch (SQLException e) {
			e.printStackTrace(); 
		}
	}
}
