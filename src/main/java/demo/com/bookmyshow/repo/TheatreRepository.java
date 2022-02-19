package demo.com.bookmyshow.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import demo.com.bookmyshow.entity.Theatre;
 
@Repository
public interface TheatreRepository  extends JpaRepository<Theatre,Long> {
 
}
