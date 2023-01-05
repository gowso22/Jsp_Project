package dto;

public class NoticeDTO {
	
	
	private int nid;
	private String title;
	private String content;
	private String userid;
	private String regDate;
	

	public int getNid() {
		return nid;
	}
	public void setNid(int nid) {
		this.nid = nid;
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
	
	public NoticeDTO() {
		
	}
	public NoticeDTO(int nid, String title, String content, String userid, String regDate) {
		super();
		this.nid = nid;
		this.title = title;
		this.content = content;
		this.userid = userid;
		this.regDate = regDate;
	}
	
	
	
	
	
	

}
