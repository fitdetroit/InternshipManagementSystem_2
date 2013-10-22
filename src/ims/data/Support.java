package ims.data;

import java.util.ArrayList;
import java.util.Collection;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.NotFound;
import org.hibernate.annotations.NotFoundAction;


@Entity
@Table(name="Support")
public class Support {

	@Id
	private String supMsgId;
	private String senderEmail;
	private String senderName;
	private String description;
	
	@ManyToOne
	@NotFound(action=NotFoundAction.IGNORE)
	private Student student;
	
	@ManyToOne
	@NotFound(action=NotFoundAction.IGNORE)
	private Company company;
	
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
