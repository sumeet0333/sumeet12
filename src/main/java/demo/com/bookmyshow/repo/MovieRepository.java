package demo.com.bookmyshow.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import demo.com.bookmyshow.entity.Movie;
 @Repository
public interface MovieRepository  extends JpaRepository<Movie,Long> {
 
}
