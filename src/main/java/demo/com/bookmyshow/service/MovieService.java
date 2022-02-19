package demo.com.bookmyshow.service;

import java.util.List;

import demo.com.bookmyshow.entity.Movie;

public interface MovieService {
	List<Movie> getMovie();
	void saveMovie(Movie movie);
	Movie getMovieById(long id);
	void deleteMovieById(long id);
 }
