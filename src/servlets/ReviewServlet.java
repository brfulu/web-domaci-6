package servlets;

import beans.Assistant;
import beans.Review;
import beans.Store;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@WebServlet(name = "ReviewServlet", urlPatterns = {"/review"})
public class ReviewServlet extends HttpServlet {
    private Store store = new Store();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String firstName = request.getParameter("first-name").trim();
        String lastName = request.getParameter("last-name").trim();
        int grade = Integer.parseInt(request.getParameter("rating").trim());
        store.addReview(new Review(new Assistant(firstName, lastName), grade));

        RequestDispatcher disp = request.getRequestDispatcher("index.jsp");
        request.setAttribute("message", "Review successfully saved!");
        disp.forward(request, response);

//        response.setContentType("text/html");
//        PrintWriter out = response.getWriter();
//        out.println("<head><title>Leave a review</title></head>");
//        out.println("<body><h2>Review successfully saved:</h2>");
//        out.println("<h3><a href=\"review-form.html\">Enter new review</a></h3>");
//        out.println("<h3><a href=\"review\">See stats</a></h3>");
//        out.println("</body>");
//        out.close();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Review> reviews = store.getReviews();

        Map<Assistant, List<Integer>> ratingsMap = new HashMap<>();
        for (Review rating : reviews) {
            if (!ratingsMap.containsKey(rating.getAssistant())) {
                ratingsMap.put(rating.getAssistant(), new ArrayList<>());
            }
            ratingsMap.get(rating.getAssistant()).add(rating.getRating());
        }

        Map<Assistant, Double> ratings = new HashMap<>();
        for (Assistant assistant : ratingsMap.keySet()) {
            int size = ratingsMap.get(assistant).size();
            int sum = 0;
            for (int grade : ratingsMap.get(assistant)) {
                sum += grade;
            }
            double avgGrade = sum / (double) (size);
            ratings.put(assistant, avgGrade);
        }

        RequestDispatcher disp = request.getRequestDispatcher("stats.jsp");
        request.setAttribute("ratings", ratings);
        disp.forward(request, response);
    }
}
