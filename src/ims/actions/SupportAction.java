package ims.actions;

import java.security.NoSuchAlgorithmException;

import ims.data.Support;


import com.opensymphony.xwork2.ActionSupport;

public class SupportAction extends ActionSupport {

	
	private String supMsgId;
	private String senderEmail;
	private String senderName;
	private String description;
	
	Support support = new Support();
	
	public String support() throws Exception{
		
		support.setSenderEmail(getSenderEmail());
		support.setSenderName(getSenderName());
		support.setDescription(getDescription());
		
		return SUCCESS;
		
	}
	
	
	public String getSupMsgId() {
		return supMsgId;
	}
	public void setSupMsgId(String supMsgId) {
		this.supMsgId = supMsgId;
	}
	public String getSenderEmail() {
		return senderEmail;
	}
	public void setSenderEmail(String senderEmail) {
		this.senderEmail = senderEmail;
	}
	public String getSenderName() {
		return senderName;
	}
	public void setSenderName(String senderName) {
		this.senderName = senderName;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}

}
