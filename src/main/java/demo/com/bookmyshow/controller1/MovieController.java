package demo.com.bookmyshow.controller1;

import java.util.LinkedList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import demo.com.bookmyshow.entity.Movie;
import demo.com.bookmyshow.entity.Movie_theatre;
import demo.com.bookmyshow.entity.Payment;
import demo.com.bookmyshow.entity.Theatre;
import demo.com.bookmyshow.service.MovieService;
import demo.com.bookmyshow.service.Movie_theatreService;
import demo.com.bookmyshow.service.TheatreService;

@Controller
public class MovieController {

	@Autowired
	private  MovieService movieService;
	@Autowired
	private TheatreService theatreService; 
	@Autowired
	private Movie_theatreService movie_theatreService;
	
	@GetMapping("/movie_index")
	public String viewHomePage(Model model) {
		
		 
	    model.addAttribute("listmovie", movieService.getMovie())	;
		return "movie_index";

	}
	
	@GetMapping("/showNewMovieForm")
	public String showNewOfferForm(Model model) {
 		
		model.addAttribute("listtheatre", theatreService.getTheatre());
		Movie movie = new Movie();
		model.addAttribute("movie", movie);
		return "new_movie";
	}
	
	
	
	
	@PostMapping("/saveMovie")
	public String saveoffer(@ModelAttribute("movie") Movie movie,Model model,@ModelAttribute("movietheatre") Movie_theatre movie_theatre,@RequestParam("t_id") String[] t_id) {
		List<Movie_theatre> l1=new LinkedList<>();

		for (int i = 0; i < t_id.length; i++) {
			Theatre t=theatreService.getTheatreById(Long.parseLong(t_id[i]));
	 		t.setMovietheatre(l1);
	 		theatreService.saveTheatre(t);

		}
		Movie_theatre mt=new Movie_theatre();
		mt.setMove(movie);
		for (int i = 0; i < t_id.length; i++) {
			mt.setTheatre(theatreService.getTheatreById(Long.parseLong(t_id[i])));

		}
		l1.add(mt);
		movie.setMovietheatre(l1);
		movieService.saveMovie(movie);
		
 		movie_theatreService.saveMovie_theatre(movie_theatre);	
		return "redirect:/movie_index";
	}
	
	@GetMapping("/movieFormForUpdate/{id}")
	public String showFormForUpdate(@PathVariable ( value = "id") long id, Model model) {
		
 		Movie movie = movieService.getMovieById(id);
 		model.addAttribute("movie", movie);
		return "update_movie";
	}
	
	@PostMapping("/saveMovie1")
	public String saveMovie(@ModelAttribute("movie") Movie movie) {
		movieService.saveMovie(movie);
		return "redirect:/movie_index";
	}
	
	
	
	@GetMapping("/deletemovie/{id}")
	public String deletemovie(@PathVariable (value = "id") long id) {
		
 		this.movieService.deleteMovieById(id);
		return "redirect:/movie_index";
	}
	
	
	@GetMapping("/viewmovie_index")
	public String viewmoviePage(Model model) {
		
		 
	    model.addAttribute("movie", movieService.getMovie())	;
		return "viewmovie_index";

	}
	@GetMapping("/updateimg")
	public String moviePage(Model model) {
		
		 
	    model.addAttribute("movie", movieService.getMovie())	;
		return "index";

	}
	
	
	@GetMapping("/book")
	public String Book() {
		
		 
	   
		return "login";

	}
	
	 
}
