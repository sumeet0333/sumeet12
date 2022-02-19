package demo.com.bookmyshow.repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import demo.com.bookmyshow.entity.Movie;
import demo.com.bookmyshow.entity.Movie_theatre;

@Repository
public interface Movie_theatreRepository extends JpaRepository<Movie_theatre, Long>{

	@Query("select mt from Movie_theatre mt where mt.move=?1")
	public List<Movie_theatre> getMovie_theatreAllBYMovieId(Movie m);

}
