package _01_intro_to_static;

public class Athlete {
	static int nextBibNumber;
	static String raceLocation = "New York";
	static String raceStartTime = "9.00am";

	String name;
	int speed;
int bibnumber;
	Athlete(String name, int speed, int bibnumber) {
		this.name = name;
		this.speed = speed;
		this.bibnumber = bibnumber;

	}

	public static void main(String[] args) {
		// create two athletes
		// print their names, bibNumbers, and the location of their race.
		Athlete Runner1 = new Athlete("Joe", 6, 1);

		Athlete Runner2 = new Athlete("Bob", 12, 2);

		System.out.println(
				Runner1.name + " with bib-number " + Runner1.bibnumber + " and " + Runner2.name + " with bib-number "
						+ Runner2.bibnumber + " will race at " + raceLocation + " at " + raceStartTime + "!");

	}
}