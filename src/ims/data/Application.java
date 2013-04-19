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

	private String state;
	
	
	
	
	
	// getters and setters

	
	public StudentCompany getStudentCompany() {
		return studentCompany;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public void setStudentCompany(StudentCompany studentCompany) {
		this.studentCompany = studentCompany;
	}

}
