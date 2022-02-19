package demo.com.bookmyshow.service;

import java.util.List;

import demo.com.bookmyshow.entity.Payment;

public interface PaymentService {
	List<Payment> getPayment();
	void savePayment(Payment payment);
	Payment getPaymentById(long id);
	void deletePaymentById(long id);
 }
