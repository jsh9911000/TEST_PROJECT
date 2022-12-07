package member.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

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
	};
	//로그인 메소드.
	public boolean selectOne(String id, String pwd) {
		Connection conn = null;
		PreparedStatement ps = null;
		int flag = 0;
		try {
			conn = new DBConnect().getConn();
			String sql = "select num "
					+ " from member"
					+ " where userID = ? and userPWD = ?";
			ps = conn.prepareStatement(sql);
			ps.setString(1,id);
			ps.setString(2, pwd);
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
	};
	//회원 조회 메소드(1).
	public MemberDto selectMember(String id) {
		MemberDto dto = null;
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			conn = new DBConnect().getConn();
			String sql = "select num, name, userPWD, joinDate"
					+ " from member"
					+ " where userID = ?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, id);
			rs = ps.executeQuery();
			while(rs.next()) {
				dto = new MemberDto();
				dto.setNum(rs.getInt("num"));
				dto.setName(rs.getString("name"));
				dto.setUserPWD(rs.getString("userPWD"));
				dto.setJoinDate(rs.getString("joinDate"));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(conn != null) conn.close();
				if(ps != null) ps.close();
				if(rs != null) rs.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		return dto;
	};
	//회원 탈퇴 메소드.
	public boolean deleteMember(String id) {
		Connection conn = null;
		PreparedStatement ps = null;
		int flag = 0;
		try {
			conn = new DBConnect().getConn();
			String sql = "delete from member"
					+ " where userID = ?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, id);
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
	};
	//회원 정보 수정하는 메소드.
	public boolean updateMember(String id, String pwd) {
		Connection conn = null;
		PreparedStatement ps = null;
		int flag = 0;
		try {
			conn = new DBConnect().getConn();
			String sql = "update member"
					+ " set userPWD = ?"
					+ " where userID = ?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, pwd);
			ps.setString(2, id);
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
	};
	//전체 회원 조회 메소드.
	public List<MemberDto> selectMembers(){
		List<MemberDto> list = new ArrayList<>();
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			conn = new DBConnect().getConn();
			String sql = "select num,name,joinDate"
					+ " from member";
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
				MemberDto dto = new MemberDto();
				dto.setNum(rs.getInt("num"));
				dto.setName(rs.getString("name"));
				dto.setJoinDate(rs.getString("joinDate"));
				list.add(dto);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(conn != null) conn.close();
				if(ps != null) ps.close();
				if(rs != null) rs.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		return list;
	};
	//회원 조회 메소드(2). => 진작에 SQL에서 제한을 unique를 줬다면 중복 아이디 안되게 만들었을 것이다.
	public boolean isExistMember(String id) {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		int flag = 0;
		try {
			conn = new DBConnect().getConn();
			String sql = "select num"
					+ " from member"
					+ " where userID = ?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, id);
			rs = ps.executeQuery();
			if(rs != null) {
				flag = 1;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(conn != null) conn.close();
				if(ps != null) ps.close();
				if(rs != null) rs.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		if(flag > 0) {
			return true;
		}else {
			return false;
		}
	};
}
