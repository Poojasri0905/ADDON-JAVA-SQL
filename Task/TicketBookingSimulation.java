package program;
import java.util.Scanner;
class TicketBooking {
    private int totalSeats;

    public TicketBooking(int totalSeats) {
        this.totalSeats = totalSeats;
    }
    public synchronized void bookTicket(String userName, int seatsRequested) {
        System.out.println(userName + " is trying to book " + seatsRequested + " seat(s)");
        try {
            Thread.sleep(1000); 
        } catch (InterruptedException e) {
            System.out.println("Thread interrupted");
        }

        if (seatsRequested <= totalSeats) {
            System.out.println("Booking successful for " + userName + " for " + seatsRequested + " seat(s).");
            totalSeats -= seatsRequested;
        } else {
            System.out.println("Booking failed for " + userName + ". Not enough seats.");
        }

        System.out.println("Remaining seats: " + totalSeats + "\n");
    }
}

class User extends Thread {
    private String userName;
    private int seatsToBook;
    private TicketBooking ticketBooking;

    public User(String userName, int seatsToBook, TicketBooking ticketBooking) {
        this.userName = userName;
        this.seatsToBook = seatsToBook;
        this.ticketBooking = ticketBooking;
    }

    public void run() {
        ticketBooking.bookTicket(userName, seatsToBook);
    }
}

public class TicketBookingSimulation {
    public static void main(String[] args) {
        TicketBooking tb = new TicketBooking(10); 
        User user1 = new User("Sara", 4, tb);
        User user2 = new User("Boss", 5, tb);
        User user3 = new User("Charu", 3, tb);
        user1.start();
        user2.start();
        user3.start();
    }
}