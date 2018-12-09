package jdbcUtils;

public class User {
	
	private String account;
	private String address;
	private int role;
	private String userId;
	private String password;
	
	
	
	public User(String account, String address, int role, String userId, String password) {
		super();
		this.account = account;
		this.address = address;
		this.role = role;
		this.userId = userId;
		this.password = password;
	}
	
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getRole() {
		return role;
	}
	public void setRole(int role) {
		this.role = role;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "User [account=" + account + ", address=" + address + ", role=" + role + ", userId=" + userId
				+ ", password=" + password + "]";
	}
	
	

}
