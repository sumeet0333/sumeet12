package demo.com.bookmyshow.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import demo.com.bookmyshow.entity.Payment;
import demo.com.bookmyshow.repo.PaymentRepository;

@Service
public class PaymentServiceImpl implements PaymentService {

	@Autowired
	private PaymentRepository paymentRepository;

	@Override
	public List<Payment> getPayment() {
		return paymentRepository.findAll();
	}
	

	@Override
	public void savePayment(Payment payment) {
		this.paymentRepository.save(payment);
	}

	@Override
	public Payment getPaymentById(long id) {
		Optional<Payment> optional = paymentRepository.findById(id);
		Payment payment = null;
		if (optional.isPresent()) {
			payment = optional.get();
		} else {
			throw new RuntimeException(" payment  not found for id :: " + id);
		}
		return payment;
	}

	@Override
	
	public void deletePaymentById(long id) {
		this.paymentRepository.deleteById(id);
	}

	 
}
