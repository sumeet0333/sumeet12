package demo.com.bookmyshow.entity;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Payment1")
public class Payment {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)	
	private long id;
	@Column(name = "payment_mode")	
	private String payment_mode;
	@Column(name = "coustomer_id")	
	private int coustomer_id;
	@Column(name = "amount")	
	private int amount;
	@Column(name = "cardexp_date")	
	private Date cardexp_date;
	@Column(name = "payment_status")	
	private String payment_status;
	
	@Column(name = "card_holder")	
	private String card_holder;
	
	@Column(name = "card_number")	
	private long card_number;
	
	@Column(name = "cvv")	
	private int cvv;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getPayment_mode() {
		return payment_mode;
	}

	public void setPayment_mode(String payment_mode) {
		this.payment_mode = payment_mode;
	}

	public int getCoustomer_id() {
		return coustomer_id;
	}

	public void setCoustomer_id(int coustomer_id) {
		this.coustomer_id = coustomer_id;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public Date getCardexp_date() {
		return cardexp_date;
	}

	public void setCardexp_date(Date cardexp_date) {
		this.cardexp_date = cardexp_date;
	}

	public String getPayment_status() {
		return payment_status;
	}

	public void setPayment_status(String payment_status) {
		this.payment_status = payment_status;
	}

	public String getCard_holder() {
		return card_holder;
	}

	public void setCard_holder(String card_holder) {
		this.card_holder = card_holder;
	}

	public long getCard_number() {
		return card_number;
	}

	public void setCard_number(long card_number) {
		this.card_number = card_number;
	}

	public int getCvv() {
		return cvv;
	}

	public void setCvv(int cvv) {
		this.cvv = cvv;
	}

	@Override
	public String toString() {
		return "Payment [id=" + id + ", payment_mode=" + payment_mode + ", coustomer_id=" + coustomer_id + ", amount="
				+ amount + ", cardexp_date=" + cardexp_date + ", payment_status=" + payment_status + ", card_holder="
				+ card_holder + ", card_number=" + card_number + ", cvv=" + cvv + "]";
	}
	
	 





}
