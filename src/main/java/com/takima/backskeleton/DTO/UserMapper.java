package com.takima.backskeleton.DTO;

import com.takima.backskeleton.models.User;

public class UserMapper {

    public static User fromDto (UserDTO userDTO) {
        User user = new User();
        user.setId(userDTO.getId());
        user.setFirstname(userDTO.getFirstName());
        user.setLastname(userDTO.getLastName());
        user.setPseudo(userDTO.getPseudo());
        user.setMail(userDTO.getMail());
        user.setImage(userDTO.getImage());
        user.setIsadmin(userDTO.getIsAdmin());
        return user;
    }

    public static UserDTO toDto (User user) {
        return new UserDTO(
                user.getId(),
                user.getFirstname(),
                user.getLastname(),
                user.getPseudo(),
                user.getMail(),
                user.getImage(),
                user.getIsadmin()
        );
    }

}
