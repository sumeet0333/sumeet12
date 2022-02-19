package demo.com.bookmyshow.controller1;

import java.util.LinkedList;
import java.util.List;

import javax.servlet.http.HttpSession;

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

import demo.com.bookmyshow.entity.Booking;
import demo.com.bookmyshow.entity.Customer2;
import demo.com.bookmyshow.entity.Movie;
import demo.com.bookmyshow.entity.Movie_theatre;
import demo.com.bookmyshow.entity.Payment;
import demo.com.bookmyshow.entity.Theatre;
import demo.com.bookmyshow.service.AddOfferService;
import demo.com.bookmyshow.service.BookingService;
import demo.com.bookmyshow.service.Customer2Service;
import demo.com.bookmyshow.service.MovieService;
import demo.com.bookmyshow.service.Movie_theatreService;
import demo.com.bookmyshow.service.PaymentService;
import demo.com.bookmyshow.service.TheatreService;

@Controller
public class BookController {

	@Autowired
	private AddOfferService offerService;
	@Autowired
	private MovieService movie1ervice;
	
	@Autowired
	private TheatreService theatreService;
	
	@Autowired
	private PaymentService paymentServaice;
	@Autowired
	private Customer2Service customerService;
	
	
	
@Autowired
private MovieService movieService;
 @Autowired
 private Movie_theatreService movietheatreService;
  
 

	@Autowired
	private  BookingService bookingService;
	
	
	
	@RequestMapping(value ="/customer_index",method = RequestMethod.GET)
	public String getDelete(Model model)
	{
	List<Customer2> customer=customerService.getAll();

	model.addAttribute("update",customer);
	return "userdetails";

	}
	
	
	
	
	
	
	
	
	
	
	
	
	@RequestMapping(value ="/customer2",method = RequestMethod.GET)
	public String getUp(Model model)
	{
	List<Customer2> customer=customerService.getAll();
	
	model.addAttribute("movie1",movie1ervice.getMovie());

	model.addAttribute("update",customer);
	return "customer";

	}
	
	
	
	
	
	
	
	
	
	
	

	@PostMapping("/delete3")
	public String custDelete2(@RequestParam("id1")String id,Model model)
	{
		customerService.deleteCustomer(Integer.parseInt(id));
	model.addAttribute("msg", "one customer record deleted sucessfully");

	List<Customer2> cust=customerService.getAll();
	model.addAttribute("update", cust);
	return "userdetails";
	}
	
	
	
	
	
	@RequestMapping(value = "/",method = RequestMethod.GET)
	public String getPage(Model model)
	{
		model.addAttribute("movie", movieService.getMovie());
		return "index";
	}
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public String getLog()
	{
		return "login";
	}
	@RequestMapping(value="/customer",method=RequestMethod.GET)
	public String getCust()
	{
		return "customerhome";
	}
	@RequestMapping(value="/offer",method=RequestMethod.GET)
	public String getOffer()
	{
		return "offer";
	}
	@RequestMapping(value="/signup",method=RequestMethod.GET)
	public String getSign()
	{
		return "signup";
	}
	@RequestMapping(value="/login1",method=RequestMethod.GET)
	public String getLogin()
	{
		return "login";
	}
	@RequestMapping(value="/booking",method=RequestMethod.GET)
	public String getLogin1()
	{
		return "login";
	}
	@RequestMapping(value = "/second1",method = RequestMethod.GET)
	public String getSecond(@RequestParam("m_id") String m_id,Model m1)
	{
		Movie m=movieService.getMovieById(Long.parseLong(m_id));
		List<Theatre> l1=new LinkedList<>();
		List<Movie_theatre> l2=movietheatreService.getMovie_theatreAllBYMovieId123(m);
		for(int i=0;i<l2.size();i++) {
			l1.add(l2.get(i).getTheatre());
		}
		System.out.println(l1);
		System.out.println(m);
		m1.addAttribute("moviedata" ,m);
		m1.addAttribute("theatredata", l1);
		
		
		return "bookingsecond";
	}
	@RequestMapping(value = "/payment",method = RequestMethod.GET)
	public String getPayment()
	{
		
		return "payment";
	}
	
	
	@GetMapping("/logout")
	public String logoutmethod(HttpSession session,Model model) {
		session.removeAttribute("name");
		session.invalidate();
		model.addAttribute("movie", movieService.getMovie());
		return "index";
	}
	 
	
	@RequestMapping(value = "/searchmovie",method = RequestMethod.GET)
	public String getSearch(Model model)
	{
		model.addAttribute("movie1", movieService.getMovie());
		return "searchmovie";
	}
	
	@RequestMapping(value = "/searchtreatre",method = RequestMethod.GET)
	public String getTreatre(Model model)
	{
		//model.addAttribute("movie1", movieService.getMovie());
		model.addAttribute("treatre",theatreService.getTheatre());
		return "searchtreatre";
	}
	
	@RequestMapping(value = "/bookingthird",method = RequestMethod.GET)
	public String getThird(@RequestParam("m_id") String m_id,@RequestParam("t_id") String t_id,Model m){
		m.addAttribute("moviedata" ,movieService.getMovieById(Long.parseLong(m_id)));
		m.addAttribute("theatredata",theatreService.getTheatreById(Long.parseLong(t_id)));
		
		

	
		
		
		
		return "bookingthird";
	}
	
	

	@RequestMapping(value = "/bookingDone",method = RequestMethod.GET)
	public String finalBookingDone(@RequestParam("m_id") String m_id,@RequestParam("t_id") String t_id,@RequestParam("o_id") String o_id,Model model ) {
model.addAttribute("moviedata",movieService.getMovieById(Long.parseLong(m_id)));
	model.addAttribute("theatredata",theatreService.getTheatreById(Long.parseLong(t_id)));
	model.addAttribute("offerdata",offerService.getOffersById(Long.parseLong(o_id)));
		return "bookingthird";
		
		
	}
	
	@PostMapping("/savecustomerBooking")
	public String savecustomerbooking(@ModelAttribute("booking") Booking booking,@ModelAttribute("payment") Payment payment) {
		bookingService.saveBooking(booking);
		
		paymentServaice.savePayment(payment);
		
		
		return "paymentStatus";
	}
	@GetMapping("/booking_index")
	public String viewHomePage(Model model) {
		
		 
	    model.addAttribute("listbooking", bookingService.getBooking())	;
		return "booking_index";

	}
	@GetMapping("/showNewBookingForm")
	public String showNewOfferForm(Model model) {
 		Booking booking = new Booking();
		model.addAttribute("booking", booking);
		return "new_booking";
	}
	@PostMapping("/saveBooking")
	public String savebooking(@ModelAttribute("booking") Booking booking) {
		bookingService.saveBooking(booking);
		return "redirect:/booking_index";
	}
	
	@GetMapping("/bookingFormForUpdate/{id}")
	public String showFormForUpdate(@PathVariable ( value = "id") long id, Model model) {
		
		Booking booking = bookingService.getBookingById(id);
		
 		model.addAttribute("booking",booking);
		return "update_booking";
	}

	@GetMapping("/deleteBooking/{id}")
	public String deletebooking(@PathVariable (value = "id") long id) {
		
 		this.bookingService.deleteBookingById(id);
		return "redirect:/booking_index";
	}
	
	
	@GetMapping("/deleteHistoryBooking/{id}")
	public String deletehistorybooking(@PathVariable (value = "id") long id,Model model) {
		
		model.addAttribute("movie1",movie1ervice.getMovie());
		
 		this.bookingService.deleteBookingById(id);
		return "customer";
	}
	
	
	
}

