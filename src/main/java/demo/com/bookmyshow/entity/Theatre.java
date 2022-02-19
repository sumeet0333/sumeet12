package demo.com.bookmyshow.entity;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
@Entity
@Table(name = "Theatre1")
public class Theatre {
	@Override
	public String toString() {
		return "Theatre [t_id=" + t_id + ", theatre_name=" + theatre_name + ", movietheatre=" + movietheatre
				+ ", city_name=" + city_name + ", ticket_price=" + ticket_price + "]";
	}
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)	
  private long t_id;
	
@Column(name = "theatre_name",length = 50)	
private String theatre_name;



@OneToMany(cascade = CascadeType.ALL,mappedBy = "theatre")
 List<Movie_theatre> movietheatre;



public long getT_id() {
	return t_id;
}
public List<Movie_theatre> getMovietheatre() {
	return movietheatre;
}
public void setMovietheatre(List<Movie_theatre> movietheatre) {
	this.movietheatre = movietheatre;
}
public void setT_id(long t_id) {
	this.t_id = t_id;
}
@Column(name = "city_name",length = 50)	
private String city_name;
@Column(name = "ticket_price")	
private int ticket_price;

 
 
 
public String getTheatre_name() {
	return theatre_name;
}
public void setTheatre_name(String theatre_name) {
	this.theatre_name = theatre_name;
}
public String getCity_name() {
	return city_name;
}
public void setCity_name(String city_name) {
	this.city_name = city_name;
}
public int getTicket_price() {
	return ticket_price;
}
public void setTicket_price(int ticket_price) {
	this.ticket_price = ticket_price;
}
 



}
