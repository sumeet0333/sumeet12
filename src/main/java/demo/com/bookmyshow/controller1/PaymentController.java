package demo.com.bookmyshow.controller1;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import demo.com.bookmyshow.entity.Payment;
import demo.com.bookmyshow.service.PaymentService;

@Controller
public class PaymentController {

	@Autowired
	private  PaymentService paymentService;
	
 	 	
	@GetMapping("/payment_index")
	public String viewHomePage(Model model) {
		
		 
	    model.addAttribute("listpayment", paymentService.getPayment())	;
		return "payment_index";

	}
	
	@GetMapping("/showNewPaymentForm")
	public String showNewOfferForm(Model model) {
 		Payment payment = new Payment();
		model.addAttribute("payment", payment);
		return "new_payment";
	}
	
	@PostMapping("/savePayment")
	public String savePayment(@ModelAttribute("payment") Payment payment) {
 		paymentService.savePayment(payment);
		return "redirect:/payment_index";
	}
	
	@GetMapping("/paymentFormForUpdate/{id}")
	public String showFormForUpdate(@PathVariable ( value = "id") long id, Model model) {
		
 		Payment payment = paymentService.getPaymentById(id);
		
 		model.addAttribute("payment", payment);
		return "update_payment";
	}
	
	@GetMapping("/deletepayment/{id}")
	public String deletemovie(@PathVariable (value = "id") long id) {
		
 		this.paymentService.deletePaymentById(id);
		return "redirect:/payment_index";
	}
	
	
	 
}
