package demo.com.bookmyshow.entity;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
public class Usertype {
	@Id
private String loginid;
private String password;
private String usertype;
public String getLoginid() {
	return loginid;
}
public void setLoginid(String loginid) {
	this.loginid = loginid;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getUsertype() {
	return usertype;
}
public void setUsertype(String usertype) {
	this.usertype = usertype;
}


public Customer2 getCustomer() {
	return customer;
}
public void setCustomer(Customer2 customer) {
	this.customer = customer;
}


@OneToOne(mappedBy = "login")
private Customer2 customer;
}
