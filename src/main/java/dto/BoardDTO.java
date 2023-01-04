package dto;

public class BoardDTO {
	
	
	private int bid;
	private String title;
	private String content;
	private String userid;
	private String regDate;
	
	public int getBid() {
		return bid;
	}
	public void setBid(int bid) {
		this.bid = bid;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	
	public BoardDTO() {
		
	}
	public BoardDTO(int bid, String title, String content, String userid, String regDate) {
		super();
		this.bid = bid;
		this.title = title;
		this.content = content;
		this.userid = userid;
		this.regDate = regDate;
	}
	
	
	
	
	

}
