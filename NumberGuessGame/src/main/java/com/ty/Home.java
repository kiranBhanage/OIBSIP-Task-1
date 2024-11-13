package com.ty;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;

@WebServlet("/guess")
public class Home extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Integer targetNumber = (Integer) session.getAttribute("targetNumber");
        Integer attempts = (Integer) session.getAttribute("attempts");

        if (targetNumber == null || attempts == null) {
        		targetNumber = new Random().nextInt(100) + 1;
            attempts = 0;
              session.setAttribute("targetNumber", targetNumber);
            session.setAttribute("attempts", attempts);
        }
        request.setAttribute("message", "");
        request.getRequestDispatcher("/DisplayGamePage.jsp").forward(request, response);
    }
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    HttpSession session = request.getSession();
	    Integer targetNumber = (Integer) session.getAttribute("targetNumber");
	    Integer attempts = (Integer) session.getAttribute("attempts");
	    String message;
	    if (targetNumber == null || attempts == null) {
	        	targetNumber = new Random().nextInt(100) + 1;
	        attempts = 0;
	        	session.setAttribute("targetNumber", targetNumber);
	        session.setAttribute("attempts", attempts);
	    }
	    try {
	        int guess = Integer.parseInt(request.getParameter("guess"));
	        attempts++;
	        session.setAttribute("attempts", attempts);
	        if (guess < targetNumber) {
	            message = "Too low! Try again.";
	        } else if (guess > targetNumber) {
	            message = "Too high! Try again.";
	        } else {
	            message = "Congratulations! You've guessed the correct number in " + attempts + " attempts.";
	            session.invalidate(); 
	          }
	    } catch (NumberFormatException e) {
	        message = "Please enter a valid number.";
	      }

	    request.setAttribute("message", message);
	    request.getRequestDispatcher("/DisplayGamePage.jsp").forward(request, response);
	}

    }
