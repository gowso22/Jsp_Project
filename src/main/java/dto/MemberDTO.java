package dto;

public class MemberDTO {

	private String id; // 아이디
	private String pwd; // 비밀번호
	private String name; // 성명
	private String gender; // 성별
	private String email1; // 이메일1
	private String email2; // 이메일2
	
	
	
	
	
	private String phone; // 전화번호

	

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getEmail1() {
		return email1;
	}

	public void setEmail1(String email1) {
		this.email1 = email1;
	}

	public String getEmail2() {
		return email2;
	}

	public void setEmail2(String email2) {
		this.email2 = email2;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}



	public MemberDTO(String id, String pwd, String name, String gender, String email1, String email2, String phone) {
		super();
		this.id = id;
		this.pwd = pwd;
		this.name = name;
		this.gender = gender;
		this.email1 = email1;
		this.email2 = email2;
		this.phone = phone;
	}

	public MemberDTO() {

	}
}
