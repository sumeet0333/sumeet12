package demo.com.bookmyshow.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import demo.com.bookmyshow.entity.AddOffer;
import demo.com.bookmyshow.repo.AddOfferRepository;

@Service
public class AddOfferServiceImpl implements AddOfferService {

	@Autowired
	private AddOfferRepository AddOfferRepository;

	@Override
	public List<AddOffer> getOffers() {
		return AddOfferRepository.findAll();
	}

	@Override
	public void saveOffer(AddOffer addoffer) {
		this.AddOfferRepository.save(addoffer);
	}

	@Override
	public AddOffer getOffersById(long id) {
		Optional<AddOffer> optional = AddOfferRepository.findById(id);
		AddOffer addoffer = null;
		if (optional.isPresent()) {
			addoffer = optional.get();
		} else {
			throw new RuntimeException(" Addoffer not found for id :: " + id);
		}
		return addoffer;
	}

	@Override	
	public void deleteOffersById(long id) {
		this.AddOfferRepository.deleteById(id);
	}

	 
}
