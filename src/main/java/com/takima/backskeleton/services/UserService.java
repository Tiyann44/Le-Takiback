package com.takima.backskeleton.services;

import com.takima.backskeleton.DAO.UserDAO;
import com.takima.backskeleton.DTO.UserDTO;
import com.takima.backskeleton.DTO.UserMapper;
import com.takima.backskeleton.models.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class UserService {

    @Autowired
    private UserDAO userDAO;

    public List<UserDTO> getAllUsers() {
        List<User> users = userDAO.findAll();
        return users.stream()
                .map(UserMapper::toDto)
                .collect(Collectors.toList());
    }

    public UserDTO findUserByEmail(String email) {
        User user = userDAO.findByEmail(email);
        return UserMapper.toDto(user);
    }

    public Optional<UserDTO> findUserById (Long id){
        Optional<User> user = userDAO.findById(id);
        return user.map(UserMapper::toDto);
    }

    public UserDTO saveUser (UserDTO userDTO){
        User user = UserMapper.fromDto(userDTO);
        User savedUser = userDAO.save(user);
        return UserMapper.toDto(savedUser);
    }

    public void deleteUserByEmail(String email) {
        userDAO.deleteUserByEmail(email);
    }

    public void deleteUserById(Long id) {
        userDAO.deleteById(id);
    }

    public boolean updateFirstNameById(Long userId, String newFirstName) {
        int rowsUpdated = userDAO.updateFirstNameById(userId, newFirstName);
        return rowsUpdated > 0;
    }

    public boolean updateLastNameById(Long userId, String newLastName) {
        int rowsUpdated = userDAO.updateLastNameById(userId, newLastName);
        return rowsUpdated > 0;
    }

    public boolean updateEmailById(Long userId, String newEmail) {
        int rowsUpdated = userDAO.updateEmailById(userId, newEmail);
        return rowsUpdated > 0;
    }

    public boolean updateIsAdminById(Long userId, Boolean isAdmin) {
        int rowsUpdated = userDAO.updateIsAdminById(userId, isAdmin);
        return rowsUpdated > 0;
    }

    public User saveUser(User user) {
        return userDAO.save(user);
    }
    
}
