package model.handler;

import java.util.Date;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import controller.HibernateUtil;
import model.bean.Movie;
import model.bean.Review;
import model.bean.User;
import model.handlerInterface.ReviewHandlerInterface;

public class ReviewHandler implements ReviewHandlerInterface {

	public ReviewHandler() {
	}

	@Override
	public void updateReview(Review review) {
		SessionFactory factory =  HibernateUtil.getSessionFactory();
		Session session = factory.openSession();
		session.beginTransaction();
		session.update(review);		
		session.getTransaction().commit();
		session.close();

	}

	@Override
	public int addReview(Review review) {
		SessionFactory factory = HibernateUtil.getSessionFactory();
		Session session = factory.openSession();
		session.beginTransaction();
		review.setPostDate(new Date());
		Integer id = (Integer) session.save(review);
		session.getTransaction().commit();
		session.close();
		return id;
	}


	@Override
	public List<Review> getReviewsByMovie(Movie movie) {
		return new MovieHandler().getReviewsByMovie(movie);
	}

	@Override
	public List<Review> getReviewsByMovie(int movie_id) {
		return new MovieHandler().getReviewsByMovie(movie_id);
	}

	@Override
	public Movie getMovieByReview(Review review) {
		return new MovieHandler().getMovieByReview(review);
	}

	@Override
	public Movie getMovieByReview(int review_id) {
		return new MovieHandler().getMovieByReview(review_id);
	}

	@Override
	public List<Review> getReviewsByUser(User user) {
		return new UserHandler().getReviewsByUser(user);
	}

	@Override
	public List<Review> getReviewsByUser(int user_id) {
		return new UserHandler().getReviewsByUser(user_id);
	}

	@Override
	public User getUserByReview(Review review) {
		return new UserHandler().getUserByReview(review);
	}

	@Override
	public User getUserByReview(int review_id) {
		return new UserHandler().getUserByReview(review_id);
	}

	@Override
	public Review getReviewsById(int id) {
		SessionFactory factory =  HibernateUtil.getSessionFactory();
		Session session = factory.openSession();
		session.beginTransaction();
		Review u = (Review)session.get(Review.class, id);		
		session.getTransaction().commit();
		session.close();
		return u;
	}

	@Override
	public boolean isMovieReviewable(int movie_id) {
		Movie m = new MovieHandler().getMovie(movie_id);
		if(m.getRelease_date()!=null && m.getRelease_date().compareTo(new Date())<=0 ){
			return true;
		}
		return false;
	}

}
