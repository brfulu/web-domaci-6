package beans;

import java.io.Serializable;

public class Review implements Serializable {
    private Assistant assistant;
    private int rating;

    public Review() {
        this.assistant = null;
        this.rating = 0;
    }

    public Review(Assistant assistant, int rating) {
        this.assistant = assistant;
        this.rating = rating;
    }

    public Assistant getAssistant() {
        return assistant;
    }

    public int getRating() {
        return rating;
    }

    public void setRating(int rating) {
        this.rating = rating;
    }

    public void setAssistant(Assistant assistant) {
        this.assistant = assistant;
    }
}
