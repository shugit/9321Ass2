package model.handlerInterface;

import java.util.List;

import model.bean.Booking;
import model.bean.OrderStatus;
import model.bean.Owner;
import model.bean.Session;
import model.bean.User;

public interface BookingHandlerInterface {
	public boolean okToBook(int session_id, int requestCount);
	public int addBooking(Booking booking);
	public void approveBooking(int id);
	public void declineBooking(int id);
	public Booking getBooking(int id);
	public void updateBooking(Booking booking);

	//user-booking related
	public List<Booking> getBookingsByUser(User user);
	public List<Booking> getBookingsByUser(int user_id);
	public User getUserByBooking(Booking booking);
	public User getUserByBooking(int booking_id);
	
	public List<Booking> getAllBookings();
	public List<Booking> getBookingsByStatus(OrderStatus s);

	//session-booking related
	public Session getSessionByBooking(Booking booking);
	public Session getSessionByBooking(int booking_id);
	public List<Booking> getBookingsBySession(Session session);
	public List<Booking> getBookingsBySession(int session_id);
}
