package board.service;

import java.util.List;

import board.dao.BoardDao;
import board.dto.BoardDto;

public class BoardService {
	private BoardDao dao;
	
	public BoardService(BoardDao dao) {
		this.dao = dao;
	};
	//게시글 추가하는 메소드.
	public boolean insert(BoardDto dto) {
		return dao.addBoard(dto);
	};
	//게시글 전체 목록 조회 메소드.
	public List<BoardDto> selectAll(){
		return dao.selectAll();
	};
	
}
