package demo.com.bookmyshow.controller1;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import demo.com.bookmyshow.entity.Theatre;
import demo.com.bookmyshow.service.TheatreService;

@Controller
public class TheatreContoller {
	
	@Autowired
	private TheatreService theatreService;
	
 	
	@GetMapping("/theatre_index")
	public String viewHomePage(Model model) {
		
		 
				model.addAttribute("listtheatre", theatreService.getTheatre())	;
		return "theatre_index";

	}
	
	@GetMapping("/showNewTheatreForm")
	public String showNewOfferForm(Model model) {
 		Theatre theatre = new Theatre();
		model.addAttribute("theatre", theatre);
		return "new_theatre";
	}
	
	
	@PostMapping("/saveTheatre")
	public String saveoffer(@ModelAttribute("theatre") Theatre theatre) {
 		theatreService.saveTheatre(theatre);
		return "redirect:/theatre_index";
	}
	
	@GetMapping("/theatreFormForUpdate/{id}")
	public String showFormForUpdate(@PathVariable ( value = "id") long id, Model model) {
		
 	Theatre theatre = theatreService.getTheatreById(id);
		
 		model.addAttribute("theatre", theatre);
		return "update_theatre";
	}
	
	
	@GetMapping("/deletetheatre/{id}")
	public String deletetheatre(@PathVariable (value = "id") long id) {
		
 		this.theatreService.deleteTheatreById(id);
		return "redirect:/theatre_index";
	}
	
}
