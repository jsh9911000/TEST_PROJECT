package member.dto;

public class MemberDto {
	private int num;
	private String name;
	private String userID;
	private String userPWD;
	private String joinDate;
	
	public MemberDto() {};

	public MemberDto(int num, String name, String userID, String userPWD, String joinDate) {
		super();
		this.num = num;
		this.name = name;
		this.userID = userID;
		this.userPWD = userPWD;
		this.joinDate = joinDate;
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

	public String getUserID() {
		return userID;
	}

	public void setUserID(String userID) {
		this.userID = userID;
	}

	public String getUserPWD() {
		return userPWD;
	}

	public void setUserPWD(String userPWD) {
		this.userPWD = userPWD;
	}

	public String getJoinDate() {
		return joinDate;
	}

	public void setJoinDate(String joinDate) {
		this.joinDate = joinDate;
	};
	
	
}
