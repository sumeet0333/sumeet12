package demo.com.bookmyshow.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "AddOffer1")
public class AddOffer {
	
	@Id
	@GeneratedValue(strategy =  GenerationType.IDENTITY)
	private long o_id;
	
	@Column(name = "offer_events")
	private String offer_events;
	
	@Column(name = "theatre_offer")
	private String theatre_offer;
	
	@Column(name = "offer_product")
	private String offer_product;
	
	
	
	
	public long getO_id() {
		return o_id;
	}

	public void setO_id(long o_id) {
		this.o_id = o_id;
	}

	@Override
	public String toString() {
		return "AddOffer [o_id=" + o_id + ", offer_events=" + offer_events + ", theatre_offer=" + theatre_offer
				+ ", offer_product=" + offer_product + ", theater_discount=" + theater_discount + ", product_discount="
				+ product_discount + ", product_url=" + product_url + "]";
	}

	@Column(name = "theater_discount")

	private int theater_discount;
	
	@Column(name = "product_discount")

	private int product_discount;

	@Column(name = "product_url")

	private String product_url;


	 
	public String getProduct_url() {
		return product_url;
	}

	public void setProduct_url(String product_url) {
		this.product_url = product_url;
	}

	 
	public String getOffer_events() {
		return offer_events;
	}

	public void setOffer_events(String offer_events) {
		this.offer_events = offer_events;
	}

	public String getTheatre_offer() {
		return theatre_offer;
	}

	public void setTheatre_offer(String theatre_offer) {
		this.theatre_offer = theatre_offer;
	}

	public String getOffer_product() {
		return offer_product;
	}

	public void setOffer_product(String offer_product) {
		this.offer_product = offer_product;
	}

	public int getTheater_discount() {
		return theater_discount;
	}

	public void setTheater_discount(int theater_discount) {
		this.theater_discount = theater_discount;
	}

	public int getProduct_discount() {
		return product_discount;
	}

	public void setProduct_discount(int product_discount) {
		this.product_discount = product_discount;
	}

	 
	 
	 
}
