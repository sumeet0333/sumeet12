package demo.com.bookmyshow.service;

import java.util.List;

import demo.com.bookmyshow.entity.Movie;
import demo.com.bookmyshow.entity.Movie_theatre;

public interface Movie_theatreService {
	List<Movie_theatre> getMovie_theatre();
	void saveMovie_theatre(Movie_theatre movie_theatre);
	List<Movie_theatre> getMovie_theatreAllBYMovieId123(Movie m);
	 
 }
