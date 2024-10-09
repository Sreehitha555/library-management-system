package com.example.edulib.controllers;

import com.example.edulib.entities.User;
import com.example.edulib.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/register")
public class RegisterController extends HttpServlet {
    private UserService userService = new UserService();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        User user = new User(firstName, lastName, email, password);
        if (userService.registerUser(user)) {
            response.sendRedirect("success.jsp");
        } else {
            request.setAttribute("errorMessage", "Registration failed!");
            request.getRequestDispatcher("register.jsp").forward(request, response);
        }
    }
}
