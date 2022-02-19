package demo.com.bookmyshow.repo;



import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import demo.com.bookmyshow.entity.Customer2;



@Repository

public interface Customer2Repo extends JpaRepository<Customer2, Integer> {

	@Query("select c from Customer2 c where c.login.loginid=:id")
	public Customer2 getCustomerByLoginId(@Param("id")String id);


}
