package ims.data;

import java.io.Serializable;

import javax.persistence.Embeddable;

@Embeddable
public class StudentCompany implements Serializable{
	
	

	
	private String studentId;
	private String companyId;
	
	
	public String getStudentId() {
		return studentId;
	}
	public void setStudentId(String studentId) {
		this.studentId = studentId;
	}
	public String getCompanyId() {
		return companyId;
	}
	public void setCompanyId(String companyId) {
		this.companyId = companyId;
	}

}
