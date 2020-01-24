 package _05_netflix;
/*
 *    Copyright (c) The League of Amazing Programmers 2013-2019
 *    Level 1
 */



public class Movie implements Comparable<Movie> {
public static void main(String[] args) {
	NetflixQueue bob = new NetflixQueue();
	Movie one = new Movie("Cars", 4);
	Movie two = new Movie("Cars 2", 2);
	Movie three = new Movie("Cars 3", 1);
	Movie four = new Movie("Planes", 3);
	Movie five = new Movie("Finding Nemo", 4); 
	bob.addMovie(one);
	bob.addMovie(two);
	bob.addMovie(three);
	bob.addMovie(four);
	bob.addMovie(five);
	bob.printMovies();
	System.out.println("The best movie is " + bob.getBestMovie());
	System.out.println("The second best movie is " + bob.getBestMovie());
	
}
	private String title;
	private int stars;

	public Movie(String title, int stars) {
		this.title = title;
		this.stars = stars;
	}

	public String getTitle() {
		return this.title;
	}

	public int getRating() {
		return this.stars;
	}

	public String toString() {
		return "\"" + title + "\" - " + stars + " stars";
	}

public String getTicketPrice() {
		if (this.stars > 2) {
			return "That will be $12 please.";
		} else if (this.title.contains("Twilight")) {
			return "This movie is so bad, we'll pay YOU to watch it!";
		} else {
			return "Don't waste your money on this horrible rubbish.";
		}
	}
 

	public int compareTo(Movie otherMovie) {
		int compareQuantity = otherMovie.getRating();

		// return this.stars - compareQuantity; //ascending order
		return compareQuantity - this.stars; // descending order
	}
}
