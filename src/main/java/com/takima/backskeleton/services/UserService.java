package com.takima.backskeleton.services;

import com.takima.backskeleton.DAO.UserDAO;
import com.takima.backskeleton.models.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {

    @Autowired
    private UserDAO userDAO;

    public User getUserByEmail(String email) {
        return userDAO.findByEmail(email);
    }

    public User getUserById(Long id) {
        return userDAO.findById(id);
    }
}
