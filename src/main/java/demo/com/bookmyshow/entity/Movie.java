package demo.com.bookmyshow.entity;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;


@Entity
@Table(name = "Movie1")

public class Movie {
	@Override
	public String toString() {
		return "Movie [m_id=" + m_id + ", movie_name=" + movie_name + ", movie_dsec=" + movie_dsec + ", release_date="
				+ release_date + ", duration=" + duration + ", cover_photo_url=" + cover_photo_url + ", trailer_url="
				+ trailer_url + ", movietheatre=" + movietheatre + "]";
	}

	@Id

	@GeneratedValue(strategy =  GenerationType.IDENTITY)
	 long m_id;
	
@Column(name = "movie_name")	
private String movie_name;

@Column(name = "movie_dsec")	
private String movie_dsec;



@Column(name = "release_date")	
private Date release_date;

@Column(name = "duration")	
private int duration;

@Column(name = "cover_photo_url")	
private String cover_photo_url;

@Column(name = "trailer_url")	
private String trailer_url;
  

 @OneToMany(cascade = CascadeType.ALL,mappedBy = "move")
 private List<Movie_theatre> movietheatre;

 
 
 
public long getM_id() {
	return m_id;
}

 

 
public void setM_id(long m_id) {
	this.m_id = m_id;
}

public List<Movie_theatre> getMovietheatre() {
	return movietheatre;
}




public void setMovietheatre(List<Movie_theatre> movietheatre) {
	this.movietheatre = movietheatre;
}




public String getMovie_name() {
	return movie_name;
}

public void setMovie_name(String movie_name) {
	this.movie_name = movie_name;
}

public String getMovie_dsec() {
	return movie_dsec;
}

public void setMovie_dsec(String movie_dsec) {
	this.movie_dsec = movie_dsec;
}

public Date getRelease_date() {
	return release_date;
}

public void setRelease_date(Date release_date) {
	this.release_date = release_date;
}

public int getDuration() {
	return duration;
}

public void setDuration(int duration) {
	this.duration = duration;
}

public String getCover_photo_url() {
	return cover_photo_url;
}

public void setCover_photo_url(String cover_photo_url) {
	this.cover_photo_url = cover_photo_url;
}

public String getTrailer_url() {
	return trailer_url;
}

public void setTrailer_url(String trailer_url) {
	this.trailer_url = trailer_url;
}
}
