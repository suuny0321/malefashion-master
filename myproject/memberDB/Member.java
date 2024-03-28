package DB.Member_DB;

import java.sql.Date;

public class Member {

	// 회원 id
	private String member_id;

	// 회원 닉네임
	private String member_nickname;

	// 회원 이름
	private String member_name;

	// 회원 비밀번호
	private int password_hash;

	// 회원 이메일
	private String email;

	// 회원 가입일
	private Date join_date;

	// 회원 생년월일
	private Date birthdate;

	// 회원 전화번호
	private String phone_number;

	// 회원 영어이름
	private String english_name;

	// 회원 성별
	private String gender;

	// 회원 여권번호
	private String passport_number;

	// 회원 프로필 사진
	private String profile_image;

	// 관리자 구분(0:일반 사용자,1 :관리자)
	private int admin_check;

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public String getMember_nickname() {
		return member_nickname;
	}

	public void setMember_nickname(String member_nickname) {
		this.member_nickname = member_nickname;
	}

	public String getMember_name() {
		return member_name;
	}

	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}

	public int getPassword_hash() {
		return password_hash;
	}

	public void setPassword_hash(int password_hash) {
		this.password_hash = password_hash;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Date getJoin_date() {
		return join_date;
	}

	public void setJoin_date(Date join_date) {
		this.join_date = join_date;
	}

	public Date getBirthdate() {
		return birthdate;
	}

	public void setBirthdate(Date birthdate) {
		this.birthdate = birthdate;
	}

	public String getPhone_number() {
		return phone_number;
	}

	public void setPhone_number(String phone_number) {
		this.phone_number = phone_number;
	}

	public String getEnglish_name() {
		return english_name;
	}

	public void setEnglish_name(String english_name) {
		this.english_name = english_name;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getPassport_number() {
		return passport_number;
	}

	public void setPassport_number(String passport_number) {
		this.passport_number = passport_number;
	}

	public String getProfile_image() {
		return profile_image;
	}

	public void setProfile_image(String profile_image) {
		this.profile_image = profile_image;
	}

	public int getAdmin_check() {
		return admin_check;
	}

	public void setAdmin_check(int admin_check) {
		this.admin_check = admin_check;
	}

}
