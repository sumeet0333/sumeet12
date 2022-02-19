package demo.com.bookmyshow.repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import demo.com.bookmyshow.entity.Booking;

@Repository
public interface BookingRepository extends JpaRepository<Booking, Long>{
	
//	@Query("select (b.id,m.movie_name) from Booking b join Movie m on b.m_id=m.m_id  where b.customer_id=:id")
	
	@Query("select b from Booking b where b.customer_id=:id")

	public List<Booking> getBookingByHistoryid(@Param("id") Integer id);



}
