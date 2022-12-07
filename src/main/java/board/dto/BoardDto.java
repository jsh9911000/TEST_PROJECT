package board.dto;

public class BoardDto {
	private int num;
	private String name;
	private String board_title;
	private String board_content;
	private String board_date;
	
	public BoardDto() {}

	public BoardDto(int num, String name, String board_title, String board_content, String board_date) {
		super();
		this.num = num;
		this.name = name;
		this.board_title = board_title;
		this.board_content = board_content;
		this.board_date = board_date;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getBoard_title() {
		return board_title;
	}

	public void setBoard_title(String board_title) {
		this.board_title = board_title;
	}

	public String getBoard_content() {
		return board_content;
	}

	public void setBoard_content(String board_content) {
		this.board_content = board_content;
	}

	public String getBoard_date() {
		return board_date;
	}

	public void setBoard_date(String board_date) {
		this.board_date = board_date;
	};
	
}
