package edu.rahbjee;

public class User {
	private int id;
	private String fullname;
	private String username;
	private String email;
	private String password;
	
	
	public int getId() {
		return id;
	}
	public String getEmail() {
		return email;
	}
	public String getPassword() {
		return password;
	}

	public String getFullname() {
		return fullname;
	}
	public String getUsername() {
		return username;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public void setId(int id) {
		this.id = id;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	
}
