package data_source;

public class Member {
	private String index_user;
	private String id;
	private String name;
	private String birth;
	private String phonenum;
	private String email;
	private String password;
	
	public String getIndex_user() {
		return index_user;
	}
	public void setIndex_user(String index_user) {
		this.index_user = index_user;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getPhonenum() {
		return phonenum;
	}
	public void setPhonenum(String phonenum) {
		this.phonenum = phonenum;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = SHA.encrypt(password);
	}
	
	
}
