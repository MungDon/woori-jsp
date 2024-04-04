package web.test.bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class BoardDAO  extends DBconnection{
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	private String sql;
		
	// 글작성메서드
	public int insert(BoardDTO dto) {
		int result = 0;
		try {
			conn = getConn();
			sql = "insert into board01 values(board01_seq.nextval,?,?,?,sysdate)";
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1,dto.getWriter());
			pstmt.setString(2,dto.getTitle());
			pstmt.setString(3,dto.getContent());
			
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close(conn, pstmt, rs);
		}
		return result;
	}
	
	public ArrayList<BoardDTO> list(){
		ArrayList<BoardDTO> list = new ArrayList<BoardDTO>();
		try {
			conn = getConn();
			sql="select * from board01 order by num desc";
			pstmt = conn.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			while(rs.next()) {
				BoardDTO dto = new BoardDTO();
				dto.setNum(rs.getInt("num"));
				dto.setWriter(rs.getString("writer"));
				dto.setTitle(rs.getString("title"));
				dto.setReg(rs.getTimestamp("reg"));
				list.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close(conn, pstmt, rs);
		}
		return list;
	}
	
	public BoardDTO  content(int num) {
		BoardDTO dto = new BoardDTO();
		try {
			conn = getConn();
			sql = "select * from board01 where num = ?";
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				dto.setNum(rs.getInt("num"));
				dto.setWriter(rs.getString("writer"));
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("content"));
				dto.setReg(rs.getTimestamp("reg"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close(conn, pstmt, rs);
		}
		return dto;
	}
}
