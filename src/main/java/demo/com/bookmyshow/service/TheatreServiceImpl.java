package demo.com.bookmyshow.service;


import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import demo.com.bookmyshow.entity.Theatre;
import demo.com.bookmyshow.repo.TheatreRepository;

@Service
public class TheatreServiceImpl implements TheatreService {

	@Autowired
	private TheatreRepository theatreRepository;

	@Override
	public List<Theatre> getTheatre() {
		return theatreRepository.findAll();
	}

	@Override
	public void saveTheatre(Theatre theatre) {
		this.theatreRepository.save(theatre);
	}

	@Override
	public Theatre getTheatreById(long id) {
		Optional<Theatre> optional = theatreRepository.findById(id);
		Theatre theatre = null;
		if (optional.isPresent()) {
			theatre = optional.get();
		} else {
			throw new RuntimeException(" theatre  not found for id :: " + id);
		}
		return theatre;
	}

	@Override
	
	public void deleteTheatreById(long id) {
		this.theatreRepository.deleteById(id);
	}

	 
}
