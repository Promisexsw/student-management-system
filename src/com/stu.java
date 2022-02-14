package com;
	public class stu {
		// 用户名
	private String username; 
		// 姓名
		private String realname;
		// E-Mail
		private String email;
		//手机号码
		private String phonename;
		//身份
		private String log;

	
	  public String getUsername() {
		  return username; 
		} 
	  public void setUsername(String username) 
	  { this.username = username; }
	 
		public String getRealname() {
			return realname;
		}
		public void setRealname(String name) {
			this.realname = name;
		}
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email =email;
		}
		public String getPhonename() {
			return phonename;
		}
		public void setPhonename(String mobile) {
			this.phonename=mobile;
		}
		public String getLog() {
			return log;
		}
		public void setLog(String people) {
			this.log =people;
		}
	}
