package demo.com.bookmyshow.service;


import java.util.List;

import demo.com.bookmyshow.entity.Booking;

public interface BookingService {
	List<Booking> getBooking();
	void saveBooking(Booking booking);
	Booking getBookingById(long id);
	void deleteBookingById(long id);
	List<Booking> getBookingHostoryCid(int id);
	
 }
