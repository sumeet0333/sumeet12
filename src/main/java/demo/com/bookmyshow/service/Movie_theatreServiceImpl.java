package demo.com.bookmyshow.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import demo.com.bookmyshow.entity.Movie;
import demo.com.bookmyshow.entity.Movie_theatre;
import demo.com.bookmyshow.repo.Movie_theatreRepository;

@Service
public class Movie_theatreServiceImpl implements Movie_theatreService {

	@Autowired
	private Movie_theatreRepository movie_theatreRepository;

	@Override
	public List<Movie_theatre> getMovie_theatre() {
		return movie_theatreRepository.findAll();
	}

	@Override
	public void saveMovie_theatre(Movie_theatre movie_theatre) {
		this.movie_theatreRepository.save(movie_theatre);
	}

@Override
	public List<Movie_theatre> getMovie_theatreAllBYMovieId123(Movie m) {
		
		return movie_theatreRepository.getMovie_theatreAllBYMovieId(m);
	}





	 
	 
}
