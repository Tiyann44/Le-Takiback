package com.takima.backskeleton.DTO;

import com.takima.backskeleton.models.User;

public class UserMapper {

    public static User fromDto (UserDTO userDTO) {
        User user = new User();
        user.setId(userDTO.getId());
        user.setFirstName(userDTO.getFirstName());
        user.setLastName(userDTO.getLastName());
        user.setMail(userDTO.getMail());
        user.setIsAdmin(userDTO.getIsAdmin());
        return user;
    }

    public static UserDTO toDto (User user) {
        return new UserDTO(
                user.getId(),
                user.getFirstName(),
                user.getLastName(),
                user.getMail(),
                user.getIsAdmin()
        );
    }

}
