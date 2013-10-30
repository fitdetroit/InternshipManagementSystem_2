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

	
	
	
	
	
	
	
	
	
	
	//gettsrs and setters
	public int getAdminId() {
		return adminId;
	}

	public void setAdminId(int adminId) {
		this.adminId = adminId;
	}
	
	
	
	
	
	

}
