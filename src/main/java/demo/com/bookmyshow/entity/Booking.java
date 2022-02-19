package demo.com.bookmyshow.entity;
 
import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="Booking1")
public class Booking {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long id;
	
	@Column(name = "customer_id")
private int customer_id;
	public int getCustomer_id() {
		return customer_id;
	}
	public void setCustomer_id(int customer_id) {
		this.customer_id = customer_id;
	}
	@Column(name = "movie_id")
private long m_id;
	@Column(name = "theatre_id")
private long t_id;
	@Column(name = "booking_date")
private Date booking_date;
	@Column(name = "no_of_seats")
private int no_of_seats;
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public long getM_id() {
		return m_id;
	}
	public void setM_id(long m_id) {
		this.m_id = m_id;
	}
	public long getT_id() {
		return t_id;
	}
	public void setT_id(long t_id) {
		this.t_id = t_id;
	}
	public Date getBooking_date() {
		return booking_date;
	}
	public void setBooking_date(Date booking_date) {
		this.booking_date = booking_date;
	}
	public int getNo_of_seats() {
		return no_of_seats;
	}
	public void setNo_of_seats(int no_of_seats) {
		this.no_of_seats = no_of_seats;
	}
	@Override
	public String toString() {
		return "Booking [id=" + id + ", customer_id=" + customer_id + ", m_id=" + m_id + ", t_id=" + t_id
				+ ", booking_date=" + booking_date + ", no_of_seats=" + no_of_seats + "]";
	}
	
	
	
	
	
	 
 
}
