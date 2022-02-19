package demo.com.bookmyshow.entity;


import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
public class Customer2 {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "customer_id")
	private int customerId;

	@Column(name = "first_name", length = 20)
	private String fname;

	@Column(name = "last_name", length = 20)
	private String lname;

	@Column(name = "email", length = 20)
	private String email;

	@Column(name = "mobile", length = 20)
	private String mobileNo;

	@Column(name = "date_of_birth")
	private String dob;

	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name ="loginid")
	private Usertype login;

	public Usertype getLogin() {
		return login;
	}

	public void setLogin(Usertype login) {
		this.login = login;
	}

	public int getCustomerId() {
		return customerId;
	}

	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}

	public String getfname() {
		return fname;
	}

	public void setfname(String fname) {
		this.fname = fname;
	}

	public String getlname() {
		return lname;
	}

	public void setlname(String lname) {
		this.lname = lname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMobileNo() {
		return mobileNo;
	}

	public void setMobileNo(String mobileNo) {
		this.mobileNo = mobileNo;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	@Override
	public String toString() {
		return "Customer [customerId=" + customerId + ", fname=" + fname + ", lname=" + lname + ", email=" + email
				+ ", mobileNo=" + mobileNo + ", dob=" + dob + ", login=" + login + "]";
	}

}