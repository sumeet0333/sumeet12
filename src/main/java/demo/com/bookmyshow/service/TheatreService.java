package demo.com.bookmyshow.service;

import java.util.List;

import demo.com.bookmyshow.entity.Theatre;

public interface TheatreService {
	List<Theatre> getTheatre();
	void saveTheatre(Theatre theatre);
	Theatre getTheatreById(long id);
	void deleteTheatreById(long id);
 }
