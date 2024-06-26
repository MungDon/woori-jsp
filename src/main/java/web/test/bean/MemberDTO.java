package web.test.bean;

import java.sql.Timestamp;

public class MemberDTO {

	private String id;			// 아이디

	private String pw;		// 비밀번호

	private String name;	// 이름

	private String birth;		// 생일

	private String phone1;	// 통신사

	private String phone2;	// 11자리 번호
	
	private String gender;	// 성별

	private Timestamp reg;// 가입일자
	
	private String auto;		// 자동 로그인

	// setter()//
	public void setId(String id) {
		this.id = id;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public void setPhone1(String phone1) {
		this.phone1 = phone1;
	}
	
	public void setPhone2(String phone2) {
		this.phone2 = phone2;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public void setReg(Timestamp reg) {
		this.reg = reg;
	}
	
	public void setAuto(String auto) {
		this.auto = auto;
	}

	// getter()//
	public String getId() {
		return id;
	}

	public String getPw() {
		return pw;
	}

	public String getName() {
		return name;
	}

	public String getBirth() {
		return birth;
	}

	public String getPhone1() {
		return phone1;
	}
	
	public String getPhone2() {
		return phone2;
	}

	public String getGender() {
		return gender;
	}

	public Timestamp getReg() {
		return reg;
	}
	
	public String getAuto() {
		return auto;
	}
}
