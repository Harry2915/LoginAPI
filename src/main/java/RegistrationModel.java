import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;



@Entity

public class RegistrationModel {

	@Id
	public int id;
	public String fname;
	public String lname;
	public String email;
	public int contact;
	public String password;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getContact() {
		return contact;
	}
	public void setContact(int contact) {
		this.contact = contact;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "RegistrationModel [id=" + id + ", fname=" + fname + ", lname=" + lname + ", email=" + email
				+ ", contact=" + contact + ", password=" + password + "]";
	}
	
	
	
}
