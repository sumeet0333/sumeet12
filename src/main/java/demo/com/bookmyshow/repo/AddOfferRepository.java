package demo.com.bookmyshow.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import demo.com.bookmyshow.entity.AddOffer;

@Repository
public interface AddOfferRepository extends JpaRepository<AddOffer, Long>{

}
