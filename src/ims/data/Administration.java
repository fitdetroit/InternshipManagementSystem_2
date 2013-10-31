package ims.data;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@org.hibernate.annotations.Entity(selectBeforeUpdate = true)
@Table(name="Administration")
public class Administration {
	
	@Id @GeneratedValue(strategy=GenerationType.AUTO)
	private int adminId;
	private boolean internshipRegiPeriod;
	private String startDate;
	private String endDate;
	private String batch;

	
	
	
	
	
	
	
	
	
	//gettsrs and setters
	public int getAdminId() {
		return adminId;
	}

	public void setAdminId(int adminId) {
		this.adminId = adminId;
	}

	public boolean isInternshipRegiPeriod() {
		return internshipRegiPeriod;
	}

	public void setInternshipRegiPeriod(boolean internshipRegiPeriod) {
		this.internshipRegiPeriod = internshipRegiPeriod;
	}

	public String getStartDate() {
		return startDate;
	}

	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}

	public String getEndDate() {
		return endDate;
	}

	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}

	public String getBatch() {
		return batch;
	}

	public void setBatch(String batch) {
		this.batch = batch;
	}
	
	
	
	
	
	
	
	

}
