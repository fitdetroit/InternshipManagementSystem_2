package ims.data;

import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@org.hibernate.annotations.Entity(selectBeforeUpdate = true)
@Table(name="Application")
public class Application {
	
	@Id
	StudentCompany studentCompany;

	private String reject;
	
	
	
	
	
	// getters and setters
	public String getReject() {
		return reject;
	}
	public void setReject(String reject) {
		this.reject = reject;
	}
	
	public StudentCompany getStudentCompany() {
		return studentCompany;
	}
	public void setStudentCompany(StudentCompany studentCompany) {
		this.studentCompany = studentCompany;
	}

}
