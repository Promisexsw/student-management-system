package com;
	public class stu {
		// �û���
	private String username; 
		// ����
		private String realname;
		// E-Mail
		private String email;
		//�ֻ�����
		private String phonename;
		//���
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
