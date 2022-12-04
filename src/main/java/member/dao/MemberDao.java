package member.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import DBConnect.DBConnect;
import member.dto.MemberDto;

public class MemberDao {
	//회원가입 메소드.
	public boolean insert(MemberDto dto) {
		Connection conn = null;
		PreparedStatement ps = null;
		int flag = 0;
		try {
			conn = new DBConnect().getConn();
			String sql = "insert into member"
					+ " (num,name,userID,userPWD,joinDate)"
					+ " values(member_seq.NEXTVAL, ?, ?, ?, SYSDATE)";
			ps = conn.prepareStatement(sql);
			ps.setString(1, dto.getName());
			ps.setString(2, dto.getUserID());
			ps.setString(3, dto.getUserPWD());
			flag = ps.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(conn != null) conn.close();
				if(ps != null) ps.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		if(flag > 0) {
			return true;
		}else {
			return false;
		}
		//전체 회원 조회하는 메소드.
		
	}
}
