package demo.com.bookmyshow.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
@Entity
@Table(name="Movie_theatre1")
public class Movie_theatre {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long mt_id;
	 
	@ManyToOne
	@JoinColumn(name = "m_id")
	Movie move;
 
	
	@ManyToOne
	@JoinColumn(name = "t_id")
	Theatre theatre;


	public long getMt_id() {
		return mt_id;
	}


	public void setMt_id(long mt_id) {
		this.mt_id = mt_id;
	}


	public Movie getMove() {
		return move;
	}


	public void setMove(Movie move) {
		this.move = move;
	}


	public Theatre getTheatre() {
		return theatre;
	}


	public void setTheatre(Theatre theatre) {
		this.theatre = theatre;
	}
	
 
}
