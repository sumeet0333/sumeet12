package demo.com.bookmyshow.controller1;

import java.util.List;

import javax.persistence.metamodel.SetAttribute;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.fasterxml.jackson.annotation.JsonCreator.Mode;

import demo.com.bookmyshow.entity.AddOffer;
import demo.com.bookmyshow.entity.Booking;
import demo.com.bookmyshow.service.AddOfferService;
import demo.com.bookmyshow.service.BookingService;
import demo.com.bookmyshow.service.Customer2Service;

@Controller
public class AddOfferController {

	@Autowired
	private AddOfferService addofferService;
	
	@Autowired
	private Customer2Service customerService;
	
	@Autowired
	private BookingService bookingService;
	
 	 
 	@GetMapping("/back_offer")
	public String getbackPAge()
	{
		return "admin";
	}
 	@ModelAttribute("offers")
 	public List<AddOffer> getofferstopayment(){
 		
 		System.out.println("myoffers "+addofferService.getOffers());
 		return addofferService.getOffers();
 	}
		
	@GetMapping("/offer_index")
	public String viewHomePage(Model model) 
	{ 
		model.addAttribute("listAddOffer", addofferService.getOffers())	;
		return "offer_index";
	}
	@GetMapping("/viewoffer_index")
	public String viewPage(Model model) 
	{ 
		model.addAttribute("listAddOffer", addofferService.getOffers())	;
		
		return "viewoffer_index";
	}
	@GetMapping("/offerview")
	public String viewOffer(Model model) 
	{ 
		model.addAttribute("listAddOffer", addofferService.getOffers())	;
		return "viewoffer1";
	}
	
	@GetMapping("/offerview2")
	public String viewOffer2(Model model) 
	{ 
		model.addAttribute("listAddOffer", addofferService.getOffers())	;
		return "viewoffer2";
	}
	
	
	@GetMapping("/showNewAddofferForm")
	public String showNewOfferForm(Model model) {
 		AddOffer addoffer = new AddOffer();
		model.addAttribute("addoffer", addoffer);
		return "new_addoffer";
	}
	
	@PostMapping("/saveAddoffer")
	public String saveoffer(@ModelAttribute("addoffer") AddOffer addoffer) {
 		addofferService.saveOffer(addoffer);
		return "redirect:/offer_index";
	}
	
	@GetMapping("/showFormForUpdate/{id}")
	public String showFormForUpdate(@PathVariable ( value = "id") long id, Model model) {
		
 		AddOffer addoffer = addofferService.getOffersById(id);
		
 		model.addAttribute("addoffer", addoffer);
		return "update_addoffer";
	}
	
	@GetMapping("/deleteAddoffer/{id}")
	public String deleteoffer(@PathVariable (value = "id") long id) {
		
 		this.addofferService.deleteOffersById(id);
		return "redirect:/offer_index";
	}
	
	@RequestMapping(value = "/addofferdatabase",method = RequestMethod.GET)
	public String gotBackToBooking(@RequestParam("m_id") String m_id,@RequestParam("t_id") String t_id ,Model model) {
		model.addAttribute("moviedata", Long.parseLong(m_id));
		model.addAttribute("theatredata", Long.parseLong(t_id));
		model.addAttribute("offerdata", addofferService.getOffers());
//		model.addAttribute("listAddOffer", addofferService.getOffers())	;
return "viewoffer_index";
	}
	

	
	@GetMapping("/bookingHistory1/{id}")
	public String bookingHistoryCid(@PathVariable (value = "id") int id , Model model) {
		System.out.println(id);
		List<Booking> bookinghistory =bookingService.getBookingHostoryCid(id);
		
		model.addAttribute("bookingdata",bookinghistory);
  		return "bookingHistory";
	}

	
	
	
	 
}
