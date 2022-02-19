package demo.com.bookmyshow.repo;



import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import demo.com.bookmyshow.entity.Usertype;




@Repository
@Transactional
public interface UsertypeRepo extends JpaRepository<Usertype, String>{

	@Query("select usertype from Usertype l where l.loginid=?1 and l.password=?2")
	String getByIdAndPassword(String name, String pswd);

	@Modifying
	@Query("update Usertype l set l.password=?1 where l.loginid=?2")
	void changePassword(String npass, String loginid);

}
