package member.service;

import java.util.List;

import member.dao.MemberDao;
import member.dto.MemberDto;

public class MemberService {
	private MemberDao dao;
	
	public MemberService(MemberDao dao) {
		this.dao = dao;
	};
	
	//회원 가입 메소드.
	public boolean signup(MemberDto dto) {
		return dao.insert(dto);
	};
	//로그인 메소드.
	public boolean login(String id, String pwd) {
		return dao.selectOne(id, pwd);
	};
	//회원 조회 메소드(1).
	public MemberDto select(String id) {
		return dao.selectMember(id);
	};
	//회원 탈퇴 메소드.
	public boolean delete(String id) {
		return dao.deleteMember(id);
	};
	//회원 정보 수정하는 메소드.
	public boolean update(String id, String pwd) {
		return dao.updateMember(id, pwd);
	};
	//회원 전체 목록 메소드.
	public List<MemberDto> selectAll(){
		return dao.selectMembers();
	};
	//회원 조회 메소드(2).
	public boolean isExist(String id) {
		return dao.isExistMember(id);
	};
	
}
