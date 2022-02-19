package demo.com.bookmyshow.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import demo.com.bookmyshow.entity.Payment;
 @Repository
public interface PaymentRepository  extends JpaRepository<Payment,Long> {
 
} 
