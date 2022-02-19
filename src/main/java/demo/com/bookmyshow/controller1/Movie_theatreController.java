package demo.com.bookmyshow.controller1;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import demo.com.bookmyshow.service.Movie_theatreService;

@Controller
public class Movie_theatreController {

	@Autowired
	private  Movie_theatreService movie_theatreService;
	 
	@GetMapping("/movietheatre_index")
	public String viewHomePage(Model model) {
		
		 
	    model.addAttribute("listmovietheatre", movie_theatreService.getMovie_theatre())	;
		return "movietheatre_index";

	}
	
	 
	
	
	
	 
}
