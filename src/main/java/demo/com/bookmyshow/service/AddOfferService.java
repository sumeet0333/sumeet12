package demo.com.bookmyshow.service;

import java.util.List;

import demo.com.bookmyshow.entity.AddOffer;

public interface AddOfferService {
	List<AddOffer> getOffers();
	void saveOffer(AddOffer addoffer);
	AddOffer getOffersById(long id);
	void deleteOffersById(long id);
 }
