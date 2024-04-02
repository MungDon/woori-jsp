package web.test.bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class MemberDAO { // Data Access Object

	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	private String sql = null;

	/**
	 * 회원가입 메서드
	 * 
	 * @param dto - 유저 요청객체
	 */
	public void insertMember(MemberDTO dto) {
		try {
			
			conn = OracleConnection.getConn();
			sql = "insert into member values(?,?,?,?,?,?,?,sysdate)";
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, dto.getId());
			pstmt.setString(2, dto.getPw());
			pstmt.setString(3, dto.getName());
			pstmt.setString(4, dto.getBirth());
			pstmt.setString(5, dto.getPhone1());
			pstmt.setString(6, dto.getPhone2());
			pstmt.setString(7, dto.getGender());
			
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			OracleConnection.close(conn, pstmt, rs);
		}
	}
	/**
	 * 회원목록
	 * @return
	 */
	public List<MemberDTO> allMember() {
		List<MemberDTO> list = new ArrayList<MemberDTO>();
		try {
			conn = OracleConnection.getConn();
			sql="select * from member";
			pstmt = conn.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				
				MemberDTO dto = new MemberDTO();
				
				dto.setId(rs.getString("id"));
				dto.setPw(rs.getString("pw"));
				dto.setName(rs.getString("name"));
				dto.setBirth(rs.getString("birth"));
				dto.setPhone1(rs.getString("phone1"));
				dto.setPhone2(rs.getString("phone2"));
				dto.setGender(rs.getString("gender"));
				dto.setReg(rs.getTimestamp("reg"));
				list.add(dto);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			OracleConnection.close(conn, pstmt, rs);
		}
		return list;
	}
	/**
	 * 회원탈퇴
	 * @param dto
	 */
	public void  deleteMember(MemberDTO dto) {
		try {
			conn = OracleConnection.getConn();
			sql = "delete from member where id = ?";
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, dto.getId());
			pstmt.executeUpdate();
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			OracleConnection.close(conn, pstmt, rs);
		}
	}
}
