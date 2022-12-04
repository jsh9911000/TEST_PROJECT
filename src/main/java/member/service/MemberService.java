package member.service;

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
	//전체 회원 조회 메소드.
}
