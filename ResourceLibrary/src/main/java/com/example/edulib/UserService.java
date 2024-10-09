package com.example.edulib.service;

import com.example.edulib.entities.User;
import com.example.edulib.dao.UserDAO;

public class UserService {
    private UserDAO userDAO = new UserDAO();

    public boolean registerUser(User user) {
        if (validateUser(user)) {
            return userDAO.save(user); // Save to database using DAO
        }
        return false;
    }

    private boolean validateUser(User user) {
        // Business logic for user validation (e.g., check if username already exists)
        return true;
    }
}
